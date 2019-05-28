#include <openssl/conf.h>
#include <openssl/evp.h>
#include <openssl/err.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "base64decode.h"
#include "base64encode.h"

void handleErrors(void)
{
    ERR_print_errors_fp(stderr);
    abort();
}

int encrypt(unsigned char *plaintext, int plaintext_len, unsigned char *key,
            unsigned char *iv, unsigned char *ciphertext)
{
    EVP_CIPHER_CTX *ctx;

    int len;

    int ciphertext_len;

    /* Create and initialise the context */
    if(!(ctx = EVP_CIPHER_CTX_new()))
        handleErrors();

    /*
     * Initialise the encryption operation. IMPORTANT - ensure you use a key
     * and IV size appropriate for your cipher
     * In this example we are using 128 bit AES (i.e. a 128 bit key). The
     * IV size for *most* modes is the same as the block size. For AES this
     * is 128 bits
     */
    if(1 != EVP_EncryptInit_ex(ctx, EVP_aes_256_ecb(), NULL, key, iv))
        handleErrors();

    /*
     * Provide the message to be encrypted, and obtain the encrypted output.
     * EVP_EncryptUpdate can be called multiple times if necessary
     */
    if(1 != EVP_EncryptUpdate(ctx, ciphertext, &len, plaintext, plaintext_len))
        handleErrors();
    ciphertext_len = len;

    /*
     * Finalise the encryption. Further ciphertext bytes may be written at
     * this stage.
     */
    if(1 != EVP_EncryptFinal_ex(ctx, ciphertext + len, &len))
        handleErrors();
    ciphertext_len += len;

    /* Clean up */
    EVP_CIPHER_CTX_free(ctx);

    return ciphertext_len;
}

int main (int argc, char **argv)
{
    /* Set up the key and iv */

		 /* A 128 bit key */
     unsigned char *key = (unsigned char *)"16807282475249162265007398494365";

    /* A 128 bit IV */
    unsigned char *iv = (unsigned char *)"0123456789012345";

    char *prefix = "0b039286d997a33c9e463b296e4dc7be4c666390cc85";

    size_t prefix_len = 22;

		/* String to append, base64 decoded */
		char *to_append =
				"Um9sbGluJyBpbiBteSA1LjAKV2l0aCBteSByYWctdG9wIGRvd24gc28gbXkgaGFpciBjYW4gYmxvdwpUaGUgZ2lybGllcyBvbiBzdGFuZGJ5IHdhdmluZyBqdXN0IHRvIHNheSBoaQpEaWQgeW91IHN0b3A/IE5vLCBJIGp1c3QgZHJvdmUgYnkK";
		char *to_append_decoded;
		size_t to_append_len;
		Base64Decode(to_append, &to_append_decoded, &to_append_len);

		/* Message to be encrypted */
		char *text_base64 = argv[1];
    char *text;
    size_t text_len;
    Base64Decode(text_base64, &text, &text_len);

		char p[prefix_len + text_len + to_append_len + 1];
    memcpy(p, prefix, prefix_len);
		memcpy(p + prefix_len, text, text_len);
    memcpy(p + prefix_len + text_len, to_append_decoded, to_append_len + 1);
		unsigned char *plaintext = (unsigned char *)p;
    size_t p_len = prefix_len + text_len + to_append_len + 1;

    /*
     * Buffer for ciphertext. Ensure the buffer is long enough for the
     * ciphertext which may be longer than the plaintext, depending on the
     * algorithm and mode.
     */
    unsigned char ciphertext[p_len];

    unsigned char decryptedtext[p_len];

    int ciphertext_len;
    int decryptedtext_len;

    /* Encrypt the plaintext */
    ciphertext_len = encrypt (plaintext, p_len, key, iv,
                              ciphertext);

    /* Do something useful with the ciphertext here */
    // printf("Ciphertext is:\n");
    char *ciphertext_base64;
    const unsigned char *c = (const unsigned char *)ciphertext;
    Base64Encode(c, ciphertext_len, &ciphertext_base64);
    printf("%s", ciphertext_base64);
    printf("\n");
    printf("%d", ciphertext_len);
    printf("\n");
    // BIO_dump_fp (stdout, (const char *)ciphertext, ciphertext_len);

    return 0;
}
