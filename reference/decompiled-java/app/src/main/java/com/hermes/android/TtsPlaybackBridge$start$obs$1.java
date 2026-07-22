package com.hermes.android;

import android.os.FileObserver;
import android.os.Handler;
import androidx.core.app.NotificationCompat;
import java.io.File;
import kotlin.Metadata;

/* JADX INFO: compiled from: TtsPlaybackBridge.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\b"}, d2 = {"com/hermes/android/TtsPlaybackBridge$start$obs$1", "Landroid/os/FileObserver;", "onEvent", "", NotificationCompat.CATEGORY_EVENT, "", "path", "", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TtsPlaybackBridge$start$obs$1 extends FileObserver {
    final /* synthetic */ TtsPlaybackBridge this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TtsPlaybackBridge$start$obs$1(TtsPlaybackBridge ttsPlaybackBridge, String str) {
        super(str, 136);
        this.this$0 = ttsPlaybackBridge;
    }

    @Override // android.os.FileObserver
    public void onEvent(int event, String path) {
        Handler handler;
        if (path == null || !this.this$0.isPlayable(path) || this.this$0.captureSnapshot(new File(this.this$0.audioDir, path)) == null) {
            return;
        }
        Object obj = this.this$0.lock;
        TtsPlaybackBridge ttsPlaybackBridge = this.this$0;
        synchronized (obj) {
            handler = ttsPlaybackBridge.handler;
        }
        if (handler != null) {
            final TtsPlaybackBridge ttsPlaybackBridge2 = this.this$0;
            handler.post(new Runnable() { // from class: com.hermes.android.TtsPlaybackBridge$start$obs$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    TtsPlaybackBridge.access$playNext(ttsPlaybackBridge2);
                }
            });
        }
    }
}
