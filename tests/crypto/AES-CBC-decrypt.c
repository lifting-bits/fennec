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

int decrypt(unsigned char *ciphertext, int ciphertext_len, unsigned char *key,
	            unsigned char *iv, unsigned char *plaintext)
	{
	    EVP_CIPHER_CTX *ctx;

	    int len;

	    int plaintext_len;

	    /* Create and initialise the context */
	    if(!(ctx = EVP_CIPHER_CTX_new()))
	        handleErrors();

	    /*
	     * Initialise the decryption operation. IMPORTANT - ensure you use a key
	     * and IV size appropriate for your cipher
	     * In this example we are using 256 bit AES (i.e. a 256 bit key). The
	     * IV size for *most* modes is the same as the block size. For AES this
	     * is 128 bits
	     */
	    if(1 != EVP_DecryptInit_ex(ctx, EVP_aes_256_cbc(), NULL, key, iv))
	        handleErrors();

	    /*
	     * Provide the message to be decrypted, and obtain the plaintext output.
	     * EVP_DecryptUpdate can be called multiple times if necessary.
	     */
	    if(1 != EVP_DecryptUpdate(ctx, plaintext, &len, ciphertext, ciphertext_len))
	        handleErrors();
	    plaintext_len = len;

	    /*
	     * Finalise the decryption. Further plaintext bytes may be written at
	     * this stage.
	     */
	    if(1 != EVP_DecryptFinal_ex(ctx, plaintext + len, &len))
	        handleErrors();
	    plaintext_len += len;

	    /* Clean up */
	    EVP_CIPHER_CTX_free(ctx);

	    return plaintext_len;
	}

	int main (int argc, char **argv)
	{
		char *withIV = argv[1];
		char iv_base64[25];
		memcpy(iv_base64, withIV, 24);
		iv_base64[24] = '\0';

		char *ciphertext_base64 = withIV + 25;
		// char *ciphertext_base64 = "uVVOKngftfPXJiOviN4dxFC+2azy0y0k9DlzB6Kaeqb5U1VhVLcvYg8mtrTZbeq9SoMn0blatKWeGGOIMCj1ewN6eXr7eP8Btx8k69V0HfbB9iDfznQukvMNrRPmvVid3493z+8xrYBQSa0i/5g6mIohV4rjQ12K1eBwOAvaS+TvrZBpMjfXpxJh+6fyR8bgc/cHzMEbJRwaE8uKppSMGvQq2i1Svjknzecv+hUh4Sg=";
		char *ciphertext_signed;
		size_t ciphertext_len;
		Base64Decode(ciphertext_base64, &ciphertext_signed, &ciphertext_len);

		unsigned char *ciphertext = (unsigned char *)ciphertext_signed;

		/* A 128 bit key */
		unsigned char *key = (unsigned char *)"16807282475249162265007398494365";
	 	/* A 128 bit IV */
		char *iv_signed;
		size_t iv_len;
		Base64Decode(iv_base64, &iv_signed, &iv_len);
	 	unsigned char *iv = (unsigned char *)iv_signed;

		unsigned char decryptedtext[ciphertext_len + 1];
	  int decryptedtext_len;

    /* Decrypt the ciphertext */
    decryptedtext_len = decrypt(ciphertext, ciphertext_len, key, iv,
                                decryptedtext);

    /* Add a NULL terminator. We are expecting printable text */
    decryptedtext[decryptedtext_len] = '\0';

    /* Show the decrypted text */
    printf("Decrypted text is:\n");
    printf("%s\n", decryptedtext);

    return 0;
	}
