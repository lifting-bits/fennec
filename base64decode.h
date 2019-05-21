#ifndef BASE64DECODE_H_INCLUDED
#define BASE64DECODE_H_INCLUDED

size_t calcDecodeLength(const char* b64input);

int Base64Decode(char* b64message, char** buffer, size_t* length);

#endif
