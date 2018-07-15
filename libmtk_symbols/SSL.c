#include <openssl/ssl.h>

#define LOG_TAG "SSL_ctrl_stub"
#include <log/log.h>

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

void SSL_CTX_callback_ctrl() { }

void SSL_CTX_ctrl() { }

void SSL_ctrl() { }

void SSLv2_client_method() { }

void ENGINE_ctrl() { }

void ENGINE_ctrl_cmd() { }

void UI_OpenSSL() { }

void ENGINE_load_private_key() { }

void OPENSSL_add_all_algorithms_noconf() { }

void EVP_PKEY_CTX_ctrl_uint64() { }
void EVP_PKEY_CTX_get0_peerkey() { }
void EVP_PKEY_CTX_get_data() { }
void EVP_PKEY_CTX_get_operation() { }
void EVP_PKEY_CTX_hex2ctrl() { }
void EVP_PKEY_CTX_set0_keygen_info() { }
void EVP_PKEY_CTX_set_data() { }
void EVP_PKEY_CTX_set_mac_key() { }
void EVP_PKEY_CTX_str2ctrl() { }
void EVP_PKEY_assign_POLY1305() { }
void EVP_PKEY_assign_SIPHASH() { }
void EVP_PKEY_decrypt_old() { }
void EVP_PKEY_encrypt_old() { }
void EVP_PKEY_new_mac_key() { }
void EVP_PKEY_save_parameters() { }
void EVP_PKEY_set_type_str() { }

void ENGINE_cleanup() { }

void ENGINE_get_first() { }

void ENGINE_get_id() { }

void ENGINE_get_next() { }

void ENGINE_finish() { }

void ENGINE_init() { }

void ENGINE_set_default() { } 

void _Z24openssl_generate_keypairPK16keymaster_device19keymaster_keypair_tPKvPPhPj() { }
