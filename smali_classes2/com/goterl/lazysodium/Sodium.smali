.class public Lcom/goterl/lazysodium/Sodium;
.super Ljava/lang/Object;
.source "Sodium.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native crypto_aead_aes256gcm_beforenm(Lcom/goterl/lazysodium/interfaces/AEAD$StateAES;[B)I
.end method

.method public native crypto_aead_aes256gcm_decrypt([B[J[B[BJ[BJ[B[B)I
.end method

.method public native crypto_aead_aes256gcm_decrypt_afternm([B[J[B[BJ[BJ[BLcom/goterl/lazysodium/interfaces/AEAD$StateAES;)I
.end method

.method public native crypto_aead_aes256gcm_decrypt_detached([B[B[BJ[B[BJ[B[B)I
.end method

.method public native crypto_aead_aes256gcm_decrypt_detached_afternm([B[B[BJ[B[BJ[BLcom/goterl/lazysodium/interfaces/AEAD$StateAES;)I
.end method

.method public native crypto_aead_aes256gcm_encrypt([B[J[BJ[BJ[B[B[B)I
.end method

.method public native crypto_aead_aes256gcm_encrypt_afternm([B[J[BJ[BJ[B[BLcom/goterl/lazysodium/interfaces/AEAD$StateAES;)I
.end method

.method public native crypto_aead_aes256gcm_encrypt_detached([B[B[J[BJ[BJ[B[B[B)I
.end method

.method public native crypto_aead_aes256gcm_encrypt_detached_afternm([B[B[J[BJ[BJ[B[BLcom/goterl/lazysodium/interfaces/AEAD$StateAES;)I
.end method

.method public native crypto_aead_aes256gcm_is_available()I
.end method

.method public native crypto_aead_aes256gcm_keygen([B)V
.end method

.method public native crypto_aead_chacha20poly1305_decrypt([B[J[B[BJ[BJ[B[B)I
.end method

.method public native crypto_aead_chacha20poly1305_decrypt_detached([B[B[BJ[B[BJ[B[B)I
.end method

.method public native crypto_aead_chacha20poly1305_encrypt([B[J[BJ[BJ[B[B[B)I
.end method

.method public native crypto_aead_chacha20poly1305_encrypt_detached([B[B[J[BJ[BJ[B[B[B)I
.end method

.method public native crypto_aead_chacha20poly1305_ietf_decrypt([B[J[B[BJ[BJ[B[B)I
.end method

.method public native crypto_aead_chacha20poly1305_ietf_decrypt_detached([B[B[BJ[B[BJ[B[B)I
.end method

.method public native crypto_aead_chacha20poly1305_ietf_encrypt([B[J[BJ[BJ[B[B[B)I
.end method

.method public native crypto_aead_chacha20poly1305_ietf_encrypt_detached([B[B[J[BJ[BJ[B[B[B)I
.end method

.method public native crypto_aead_chacha20poly1305_ietf_keygen([B)V
.end method

.method public native crypto_aead_chacha20poly1305_keygen([B)V
.end method

.method public native crypto_aead_xchacha20poly1305_ietf_decrypt([B[J[B[BJ[BJ[B[B)I
.end method

.method public native crypto_aead_xchacha20poly1305_ietf_decrypt_detached([B[B[BJ[B[BJ[B[B)I
.end method

.method public native crypto_aead_xchacha20poly1305_ietf_encrypt([B[J[BJ[BJ[B[B[B)I
.end method

.method public native crypto_aead_xchacha20poly1305_ietf_encrypt_detached([B[B[J[BJ[BJ[B[B[B)I
.end method

.method public native crypto_aead_xchacha20poly1305_ietf_keygen([B)V
.end method

.method public native crypto_auth([B[BJ[B)I
.end method

.method public native crypto_auth_hmacsha256([B[BJ[B)I
.end method

.method public native crypto_auth_hmacsha256_final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[B)I
.end method

.method public native crypto_auth_hmacsha256_init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[BI)I
.end method

.method public native crypto_auth_hmacsha256_keygen([B)V
.end method

.method public native crypto_auth_hmacsha256_update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[BJ)I
.end method

.method public native crypto_auth_hmacsha256_verify([B[BJ[B)I
.end method

.method public native crypto_auth_hmacsha512([B[BJ[B)I
.end method

.method public native crypto_auth_hmacsha512256([B[BJ[B)I
.end method

.method public native crypto_auth_hmacsha512256_final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[B)I
.end method

.method public native crypto_auth_hmacsha512256_init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[BI)I
.end method

.method public native crypto_auth_hmacsha512256_keygen([B)V
.end method

.method public native crypto_auth_hmacsha512256_update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[BJ)I
.end method

.method public native crypto_auth_hmacsha512256_verify([B[BJ[B)I
.end method

.method public native crypto_auth_hmacsha512_final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[B)I
.end method

.method public native crypto_auth_hmacsha512_init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[BI)I
.end method

.method public native crypto_auth_hmacsha512_keygen([B)V
.end method

.method public native crypto_auth_hmacsha512_update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[BJ)I
.end method

.method public native crypto_auth_hmacsha512_verify([B[BJ[B)I
.end method

.method public native crypto_auth_keygen([B)V
.end method

.method public native crypto_auth_verify([B[BJ[B)I
.end method

.method public native crypto_box_beforenm([B[B[B)I
.end method

.method public native crypto_box_detached([B[B[BJ[B[B[B)I
.end method

.method public native crypto_box_detached_afternm([B[B[BJ[B[B)I
.end method

.method public native crypto_box_easy([B[BJ[B[B[B)I
.end method

.method public native crypto_box_easy_afternm([B[BJ[B[B)I
.end method

.method public native crypto_box_keypair([B[B)I
.end method

.method public native crypto_box_open_detached([B[B[BJ[B[B[B)I
.end method

.method public native crypto_box_open_detached_afternm([B[B[BJ[B[B)I
.end method

.method public native crypto_box_open_easy([B[BJ[B[B[B)I
.end method

.method public native crypto_box_open_easy_afternm([B[BJ[B[B)I
.end method

.method public native crypto_box_seal([B[BJ[B)I
.end method

.method public native crypto_box_seal_open([B[BJ[B[B)I
.end method

.method public native crypto_box_seed_keypair([B[B[B)I
.end method

.method public native crypto_core_hchacha20([B[B[B[B)I
.end method

.method public native crypto_core_ristretto255_add([B[B[B)I
.end method

.method public native crypto_core_ristretto255_from_hash([B[B)I
.end method

.method public native crypto_core_ristretto255_is_valid_point([B)I
.end method

.method public native crypto_core_ristretto255_random([B)V
.end method

.method public native crypto_core_ristretto255_scalar_add([B[B[B)V
.end method

.method public native crypto_core_ristretto255_scalar_complement([B[B)V
.end method

.method public native crypto_core_ristretto255_scalar_invert([B[B)I
.end method

.method public native crypto_core_ristretto255_scalar_mul([B[B[B)V
.end method

.method public native crypto_core_ristretto255_scalar_negate([B[B)V
.end method

.method public native crypto_core_ristretto255_scalar_random([B)V
.end method

.method public native crypto_core_ristretto255_scalar_reduce([B[B)V
.end method

.method public native crypto_core_ristretto255_scalar_sub([B[B[B)V
.end method

.method public native crypto_core_ristretto255_sub([B[B[B)I
.end method

.method public native crypto_generichash([BI[BJ[BI)I
.end method

.method public native crypto_generichash_blake2b_salt_personal([BI[BJ[BI[B[B)I
.end method

.method public native crypto_generichash_final([B[BI)I
.end method

.method public native crypto_generichash_init([B[BII)I
.end method

.method public native crypto_generichash_keygen([B)V
.end method

.method public native crypto_generichash_statebytes()I
.end method

.method public native crypto_generichash_update([B[BJ)I
.end method

.method public native crypto_hash_sha256([B[BJ)I
.end method

.method public native crypto_hash_sha256_final(Lcom/goterl/lazysodium/interfaces/Hash$State256;[B)I
.end method

.method public native crypto_hash_sha256_init(Lcom/goterl/lazysodium/interfaces/Hash$State256;)I
.end method

.method public native crypto_hash_sha256_update(Lcom/goterl/lazysodium/interfaces/Hash$State256;[BJ)I
.end method

.method public native crypto_hash_sha512([B[BJ)I
.end method

.method public native crypto_hash_sha512_final(Lcom/goterl/lazysodium/interfaces/Hash$State512;[B)I
.end method

.method public native crypto_hash_sha512_init(Lcom/goterl/lazysodium/interfaces/Hash$State512;)I
.end method

.method public native crypto_hash_sha512_update(Lcom/goterl/lazysodium/interfaces/Hash$State512;[BJ)I
.end method

.method public native crypto_kdf_derive_from_key([BIJ[B[B)I
.end method

.method public native crypto_kdf_keygen([B)V
.end method

.method public native crypto_kx_client_session_keys([B[B[B[B[B)I
.end method

.method public native crypto_kx_keypair([B[B)I
.end method

.method public native crypto_kx_seed_keypair([B[B[B)I
.end method

.method public native crypto_kx_server_session_keys([B[B[B[B[B)I
.end method

.method public native crypto_pwhash([BJ[BJ[BJLcom/sun/jna/NativeLong;I)I
.end method

.method public native crypto_pwhash_str([B[BJJLcom/sun/jna/NativeLong;)I
.end method

.method public native crypto_pwhash_str_needs_rehash([BJLcom/sun/jna/NativeLong;)I
.end method

.method public native crypto_pwhash_str_verify([B[BJ)I
.end method

.method public native crypto_scalarmult([B[B[B)I
.end method

.method public native crypto_scalarmult_base([B[B)I
.end method

.method public native crypto_scalarmult_ristretto255([B[B[B)I
.end method

.method public native crypto_scalarmult_ristretto255_base([B[B)I
.end method

.method public native crypto_secretbox_detached([B[B[BJ[B[B)I
.end method

.method public native crypto_secretbox_easy([B[BJ[B[B)I
.end method

.method public native crypto_secretbox_keygen([B)V
.end method

.method public native crypto_secretbox_open_detached([B[B[BJ[B[B)I
.end method

.method public native crypto_secretbox_open_easy([B[BJ[B[B)I
.end method

.method public native crypto_secretstream_xchacha20poly1305_abytes()I
.end method

.method public native crypto_secretstream_xchacha20poly1305_headerbytes()I
.end method

.method public native crypto_secretstream_xchacha20poly1305_init_pull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[B)I
.end method

.method public native crypto_secretstream_xchacha20poly1305_init_push(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[B)I
.end method

.method public native crypto_secretstream_xchacha20poly1305_keybytes()I
.end method

.method public native crypto_secretstream_xchacha20poly1305_keygen([B)V
.end method

.method public native crypto_secretstream_xchacha20poly1305_messagebytes_max()I
.end method

.method public native crypto_secretstream_xchacha20poly1305_pull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[B[BJ[BJ)I
.end method

.method public native crypto_secretstream_xchacha20poly1305_push(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[BJ[BJB)I
.end method

.method public native crypto_secretstream_xchacha20poly1305_rekey(Lcom/goterl/lazysodium/interfaces/SecretStream$State;)V
.end method

.method public native crypto_secretstream_xchacha20poly1305_tag_final()B
.end method

.method public native crypto_secretstream_xchacha20poly1305_tag_message()B
.end method

.method public native crypto_secretstream_xchacha20poly1305_tag_push()B
.end method

.method public native crypto_secretstream_xchacha20poly1305_tag_rekey()B
.end method

.method public native crypto_shorthash([B[BJ[B)I
.end method

.method public native crypto_shorthash_keygen([B)I
.end method

.method public native crypto_sign([BLcom/sun/jna/Pointer;[BJ[B)I
.end method

.method public native crypto_sign_detached([BLcom/sun/jna/Pointer;[BJ[B)I
.end method

.method public native crypto_sign_ed25519_pk_to_curve25519([B[B)I
.end method

.method public native crypto_sign_ed25519_sk_to_curve25519([B[B)I
.end method

.method public native crypto_sign_ed25519_sk_to_pk([B[B)I
.end method

.method public native crypto_sign_ed25519_sk_to_seed([B[B)I
.end method

.method public native crypto_sign_final_create(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;[BLcom/sun/jna/Pointer;[B)I
.end method

.method public native crypto_sign_final_verify(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;[B[B)I
.end method

.method public native crypto_sign_init(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;)I
.end method

.method public native crypto_sign_keypair([B[B)I
.end method

.method public native crypto_sign_open([BLcom/sun/jna/Pointer;[BJ[B)I
.end method

.method public native crypto_sign_seed_keypair([B[B[B)I
.end method

.method public native crypto_sign_update(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;[BJ)I
.end method

.method public native crypto_sign_verify_detached([B[BJ[B)I
.end method

.method public native crypto_stream([BJ[B[B)I
.end method

.method public native crypto_stream_chacha20([BJ[B[B)I
.end method

.method public native crypto_stream_chacha20_ietf([BJ[B[B)I
.end method

.method public native crypto_stream_chacha20_ietf_keygen([B)V
.end method

.method public native crypto_stream_chacha20_ietf_xor([B[BJ[B[B)I
.end method

.method public native crypto_stream_chacha20_ietf_xor_ic([B[BJ[BJ[B)I
.end method

.method public native crypto_stream_chacha20_keygen([B)V
.end method

.method public native crypto_stream_chacha20_xor([B[BJ[B[B)I
.end method

.method public native crypto_stream_chacha20_xor_ic([B[BJ[BJ[B)I
.end method

.method public native crypto_stream_keygen([B)V
.end method

.method public native crypto_stream_salsa20([BJ[B[B)I
.end method

.method public native crypto_stream_salsa20_keygen([B)V
.end method

.method public native crypto_stream_salsa20_xor([B[BJ[B[B)I
.end method

.method public native crypto_stream_salsa20_xor_ic([B[BJ[BJ[B)I
.end method

.method public native crypto_stream_xor([B[BJ[B[B)I
.end method

.method protected onRegistered()V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/goterl/lazysodium/Sodium;->sodium_init()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sodium library could not be initialised properly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native randombytes_buf([BI)V
.end method

.method public native randombytes_buf_deterministic([BI[B)V
.end method

.method public native randombytes_random()J
.end method

.method public native randombytes_uniform(I)J
.end method

.method public native sodium_add([B[BI)V
.end method

.method public native sodium_allocarray(II)Lcom/sun/jna/Pointer;
.end method

.method public native sodium_base642bin([BI[BI[BLcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;I)I
.end method

.method public native sodium_base64_encoded_len(II)I
.end method

.method public native sodium_bin2base64([BI[BII)Ljava/lang/String;
.end method

.method public native sodium_bin2hex([BI[BI)Ljava/lang/String;
.end method

.method public native sodium_compare([B[BI)I
.end method

.method public native sodium_free(Lcom/sun/jna/Pointer;)V
.end method

.method public native sodium_hex2bin([BI[BI[BLcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)I
.end method

.method public native sodium_increment([BI)V
.end method

.method public native sodium_init()I
.end method

.method public native sodium_is_zero([BI)I
.end method

.method public native sodium_malloc(I)Lcom/sun/jna/Pointer;
.end method

.method public native sodium_memcmp([B[BI)I
.end method

.method public native sodium_memzero([BI)I
.end method

.method public native sodium_mlock([BI)I
.end method

.method public native sodium_mprotect_noaccess(Lcom/sun/jna/Pointer;)I
.end method

.method public native sodium_mprotect_readonly(Lcom/sun/jna/Pointer;)I
.end method

.method public native sodium_mprotect_readwrite(Lcom/sun/jna/Pointer;)I
.end method

.method public native sodium_munlock([BI)I
.end method

.method public native sodium_pad(Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;III)I
.end method

.method public native sodium_stackzero(I)V
.end method

.method public native sodium_unpad(Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;II)I
.end method
