#include <openssl/ssl.h>
#include <malloc.h>

#define LOG_TAG "SSL_ctrl_stub"
#include <log/log.h>

long SSL_ctrl(SSL *ssl, int cmd, long larg, void *parg) {
    ALOGD("SSL_ctrl: ssl=%p cmd=%d larg=%ld parg=%p", ssl, cmd, larg, parg);
    return -1;
}

long SSL_CTX_ctrl(SSL_CTX *ctx, int cmd, long larg, void *parg) {
    ALOGD("SSL_CTX_ctrl: ctx=%p cmd=%d larg=%ld parg=%p", ctx, cmd, larg, parg);
    return -1;
}

void CRYPTO_free(void *str) {
    free(str);
}

void *CRYPTO_malloc(int num, const char *file, int line) {
    ALOGD("CRYPTO_malloc: num=%d file=%s line=%d", num, file, line);
    return malloc(num);
}

void CRYPTO_lock(int mode, int type, const char *file, int line) {
    ALOGD("CRYPTO_lock: mode=%d type=%d file=%s line=%d", mode, type, file, line);
}

void SSLv2_client_method() { }

void SSL_CTX_callback_ctrl() { }

void SSL_CTX_ctrl() { }

void UI_OpenSSL() { }

void SSL_ctrl() { }

void OPENSSL_add_all_algorithms_noconf() { }
