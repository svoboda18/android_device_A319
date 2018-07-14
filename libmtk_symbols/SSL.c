#include <openssl/ssl.h>

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

void ENGINE_ctrl() { }

void ENGINE_ctrl_cmd() { }

void UI_OpenSSL() { }

void ENGINE_load_private_key() { }

void OPENSSL_add_all_algorithms_noconf() { }

void ENGINE_cleanup() { }

void ENGINE_get_first() { }

void ENGINE_get_id() { }

void ENGINE_get_next() { }

void ENGINE_finish() { }

void ENGINE_init() { }

void ENGINE_set_default() { }
