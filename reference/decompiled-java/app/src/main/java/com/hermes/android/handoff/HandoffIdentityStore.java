package com.hermes.android.handoff;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.LocalizedIllegalArgument;
import com.hermes.android.LocalizedIllegalState;
import com.hermes.android.R;
import com.hermes.android.handoff.HandoffCrypto;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HandoffIdentityStore.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/hermes/android/handoff/HandoffIdentityStore;", BuildConfig.FLAVOR, "keyFile", "Ljava/io/File;", "crypto", "Lcom/hermes/android/handoff/HandoffCrypto;", "<init>", "(Ljava/io/File;Lcom/hermes/android/handoff/HandoffCrypto;)V", "loadOrCreate", "Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;", "hardenPerms", BuildConfig.FLAVOR, "f", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HandoffIdentityStore {
    public static final int $stable = 8;
    private final HandoffCrypto crypto;
    private final File keyFile;

    public HandoffIdentityStore(File file, HandoffCrypto handoffCrypto) {
        Intrinsics.checkNotNullParameter(file, "keyFile");
        Intrinsics.checkNotNullParameter(handoffCrypto, "crypto");
        this.keyFile = file;
        this.crypto = handoffCrypto;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: com.hermes.android.LocalizedIllegalArgument */
    public final HandoffCrypto.KeyPair loadOrCreate() throws IOException, LocalizedIllegalArgument {
        if (this.keyFile.isFile()) {
            byte[] bytes = FilesKt.readBytes(this.keyFile);
            if (bytes.length != 32) {
                throw new LocalizedIllegalArgument("identity key file corrupted: length " + bytes.length + " (expected 32)", R.string.handoff_err_identity_corrupt, new Integer[]{Integer.valueOf(bytes.length)});
            }
            return new HandoffCrypto.KeyPair(bytes, this.crypto.publicFromPrivate(bytes));
        }
        HandoffCrypto.KeyPair keyPairGenerateIdentity = this.crypto.generateIdentity();
        File parentFile = this.keyFile.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        File fileCreateTempFile = File.createTempFile(".idkey-", null, this.keyFile.getParentFile());
        try {
            Intrinsics.checkNotNull(fileCreateTempFile);
            FilesKt.writeBytes(fileCreateTempFile, keyPairGenerateIdentity.getSecretKey());
            hardenPerms(fileCreateTempFile);
            if (!fileCreateTempFile.renameTo(this.keyFile)) {
                throw new LocalizedIllegalState("identity key file rename failed", R.string.handoff_err_identity_write, (Object[]) null, 4, (DefaultConstructorMarker) null);
            }
            hardenPerms(this.keyFile);
            return keyPairGenerateIdentity;
        } catch (Throwable th) {
            fileCreateTempFile.delete();
            throw th;
        }
    }

    private final void hardenPerms(File f) {
        f.setReadable(false, false);
        f.setReadable(true, true);
        f.setWritable(false, false);
        f.setWritable(true, true);
        f.setExecutable(false, false);
    }
}
