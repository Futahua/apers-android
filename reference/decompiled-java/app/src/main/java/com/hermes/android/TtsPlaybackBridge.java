package com.hermes.android;

import android.media.MediaPlayer;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import java.io.File;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: TtsPlaybackBridge.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0007\u0018\u0000 '2\u00020\u0001:\u0001'B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001dJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00032\u0006\u0010 \u001a\u00020\u0003H\u0002J\b\u0010!\u001a\u00020\u001dH\u0002J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u0011H\u0002J\b\u0010$\u001a\u00020\u001dH\u0002J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u0019H\u0002R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/hermes/android/TtsPlaybackBridge;", "", "hermesHome", "Ljava/io/File;", "<init>", "(Ljava/io/File;)V", "audioDir", "playRoot", "instanceDir", "lock", "observer", "Landroid/os/FileObserver;", "thread", "Landroid/os/HandlerThread;", "handler", "Landroid/os/Handler;", "player", "Landroid/media/MediaPlayer;", "currentSnapshot", "queue", "Lkotlin/collections/ArrayDeque;", "queuedBytes", "", "seq", "lastIdentity", "", "stopped", "", "start", "", "stop", "captureSnapshot", "src", "playNext", "onTrackEnd", "mp", "sweepStaleInstanceDirs", "isPlayable", "name", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TtsPlaybackBridge {
    private static final long MAX_QUEUE_BYTES = 67108864;
    private static final int MAX_QUEUE_ITEMS = 32;
    private static final long MAX_TTS_BYTES = 8388608;
    private static final long STALE_DIR_MS = 300000;
    private static final String TAG = "TtsPlaybackBridge";
    private final File audioDir;
    private File currentSnapshot;
    private Handler handler;
    private final File instanceDir;
    private String lastIdentity;
    private final Object lock;
    private FileObserver observer;
    private final File playRoot;
    private MediaPlayer player;
    private final ArrayDeque<File> queue;
    private long queuedBytes;
    private long seq;
    private boolean stopped;
    private HandlerThread thread;
    public static final int $stable = 8;
    private static final AtomicLong INSTANCE_SEQ = new AtomicLong(0);

    public TtsPlaybackBridge(File file) {
        Intrinsics.checkNotNullParameter(file, "hermesHome");
        File file2 = new File(file, "cache/audio");
        this.audioDir = file2;
        File file3 = new File(file2, ".play");
        this.playRoot = file3;
        this.instanceDir = new File(file3, System.currentTimeMillis() + "-" + INSTANCE_SEQ.incrementAndGet());
        this.lock = new Object();
        this.queue = new ArrayDeque<>();
    }

    public final void start() {
        synchronized (this.lock) {
            if (this.observer != null) {
                return;
            }
            this.stopped = false;
            Unit unit = Unit.INSTANCE;
            try {
                if (!this.audioDir.exists()) {
                    this.audioDir.mkdirs();
                }
                this.instanceDir.mkdirs();
                sweepStaleInstanceDirs();
                HandlerThread handlerThread = new HandlerThread("tts-playback");
                handlerThread.start();
                TtsPlaybackBridge$start$obs$1 ttsPlaybackBridge$start$obs$1 = new TtsPlaybackBridge$start$obs$1(this, this.audioDir.getAbsolutePath());
                synchronized (this.lock) {
                    this.thread = handlerThread;
                    this.handler = new Handler(handlerThread.getLooper());
                    this.observer = ttsPlaybackBridge$start$obs$1;
                    Unit unit2 = Unit.INSTANCE;
                }
                ttsPlaybackBridge$start$obs$1.startWatching();
                Log.i(TAG, "TTS playback bridge watching " + this.audioDir.getAbsolutePath());
            } catch (Exception e) {
                Log.w(TAG, "TTS bridge start failed: " + e.getMessage());
            }
        }
    }

    public final void stop() {
        Handler handler;
        FileObserver fileObserver;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (this.lock) {
            this.stopped = true;
            handler = this.handler;
            objectRef.element = this.thread;
            fileObserver = this.observer;
            this.handler = null;
            this.thread = null;
            this.observer = null;
            Unit unit = Unit.INSTANCE;
        }
        if (fileObserver != null) {
            try {
                fileObserver.stopWatching();
            } catch (Exception unused) {
            }
        }
        Runnable runnable = new Runnable() { // from class: com.hermes.android.TtsPlaybackBridge$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                TtsPlaybackBridge.stop$lambda$8(this.f$0, objectRef);
            }
        };
        if (handler == null || !handler.post(runnable)) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void stop$lambda$8(TtsPlaybackBridge ttsPlaybackBridge, Ref.ObjectRef objectRef) {
        synchronized (ttsPlaybackBridge.lock) {
            for (File file : ttsPlaybackBridge.queue) {
                try {
                    Result.Companion companion = Result.Companion;
                    Result.constructor-impl(Boolean.valueOf(file.delete()));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    Result.constructor-impl(ResultKt.createFailure(th));
                }
            }
            ttsPlaybackBridge.queue.clear();
            ttsPlaybackBridge.queuedBytes = 0L;
            try {
                MediaPlayer mediaPlayer = ttsPlaybackBridge.player;
                if (mediaPlayer != null) {
                    mediaPlayer.release();
                }
            } catch (Exception unused) {
            }
            ttsPlaybackBridge.player = null;
            ttsPlaybackBridge.currentSnapshot = null;
            Unit unit = Unit.INSTANCE;
        }
        try {
            Result.Companion companion3 = Result.Companion;
            Result.constructor-impl(Boolean.valueOf(FilesKt.deleteRecursively(ttsPlaybackBridge.instanceDir)));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.Companion;
            Result.constructor-impl(ResultKt.createFailure(th2));
        }
        HandlerThread handlerThread = (HandlerThread) objectRef.element;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File captureSnapshot(File src) {
        synchronized (this.lock) {
            if (this.stopped) {
                return null;
            }
            if (!src.isFile()) {
                return null;
            }
            long length = src.length();
            if (length <= 0) {
                return null;
            }
            if (length > MAX_TTS_BYTES) {
                Log.w(TAG, "TTS skip oversized " + src.getName() + ": " + length + " bytes");
                return null;
            }
            String str = src.getName() + "|" + length + "|" + src.lastModified();
            if (Intrinsics.areEqual(str, this.lastIdentity)) {
                return null;
            }
            if (this.queue.size() >= 32 || this.queuedBytes + length > MAX_QUEUE_BYTES) {
                Log.w(TAG, "TTS queue full (" + this.queue.size() + " items / " + this.queuedBytes + " B), dropping " + src.getName());
                return null;
            }
            try {
                File file = this.instanceDir;
                long j = this.seq;
                this.seq = 1 + j;
                File file2 = new File(file, j + "_" + src.getName());
                FilesKt.copyTo$default(src, file2, true, 0, 4, (Object) null);
                this.lastIdentity = str;
                this.queue.addLast(file2);
                this.queuedBytes += file2.length();
                return file2;
            } catch (Exception e) {
                Log.w(TAG, "TTS snapshot failed for " + src.getName() + ": " + e.getMessage());
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0103, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void playNext() {
        while (true) {
            synchronized (this.lock) {
                if (this.stopped || this.player != null) {
                    break;
                }
                File file = (File) this.queue.removeFirstOrNull();
                if (file == null) {
                    return;
                }
                this.queuedBytes -= file.length();
                Unit unit = Unit.INSTANCE;
                try {
                    final MediaPlayer mediaPlayer = new MediaPlayer();
                    try {
                        mediaPlayer.setDataSource(file.getAbsolutePath());
                        mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.hermes.android.TtsPlaybackBridge$$ExternalSyntheticLambda0
                            @Override // android.media.MediaPlayer.OnCompletionListener
                            public final void onCompletion(MediaPlayer mediaPlayer2) {
                                this.f$0.onTrackEnd(mediaPlayer);
                            }
                        });
                        mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.hermes.android.TtsPlaybackBridge$$ExternalSyntheticLambda1
                            @Override // android.media.MediaPlayer.OnErrorListener
                            public final boolean onError(MediaPlayer mediaPlayer2, int i, int i2) {
                                return TtsPlaybackBridge.playNext$lambda$14(this.f$0, mediaPlayer, mediaPlayer2, i, i2);
                            }
                        });
                        mediaPlayer.prepare();
                        mediaPlayer.start();
                        synchronized (this.lock) {
                            this.player = mediaPlayer;
                            this.currentSnapshot = file;
                            Unit unit2 = Unit.INSTANCE;
                        }
                        Log.i(TAG, "Playing TTS audio: " + file.getName());
                        return;
                    } catch (Exception e) {
                        try {
                            mediaPlayer.release();
                        } catch (Exception unused) {
                        }
                        try {
                            Result.Companion companion = Result.Companion;
                            Result.constructor-impl(Boolean.valueOf(file.delete()));
                        } catch (Throwable th) {
                            Result.Companion companion2 = Result.Companion;
                            Result.constructor-impl(ResultKt.createFailure(th));
                        }
                        Log.w(TAG, "TTS playback failed for " + file.getName() + ": " + e.getMessage());
                    }
                } catch (Exception e2) {
                    try {
                        Result.Companion companion3 = Result.Companion;
                        Result.constructor-impl(Boolean.valueOf(file.delete()));
                    } catch (Throwable th2) {
                        Result.Companion companion4 = Result.Companion;
                        Result.constructor-impl(ResultKt.createFailure(th2));
                    }
                    Log.w(TAG, "TTS MediaPlayer create failed for " + file.getName() + ": " + e2.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean playNext$lambda$14(TtsPlaybackBridge ttsPlaybackBridge, MediaPlayer mediaPlayer, MediaPlayer mediaPlayer2, int i, int i2) {
        ttsPlaybackBridge.onTrackEnd(mediaPlayer);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTrackEnd(MediaPlayer mp) {
        boolean z;
        Object obj;
        synchronized (this.lock) {
            try {
                mp.release();
            } catch (Exception unused) {
            }
            z = this.player == mp;
            if (z) {
                File file = this.currentSnapshot;
                if (file != null) {
                    try {
                        Result.Companion companion = Result.Companion;
                        TtsPlaybackBridge ttsPlaybackBridge = this;
                        obj = Result.constructor-impl(Boolean.valueOf(file.delete()));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.Companion;
                        obj = Result.constructor-impl(ResultKt.createFailure(th));
                    }
                    Result.box-impl(obj);
                }
                this.currentSnapshot = null;
                this.player = null;
                Unit unit = Unit.INSTANCE;
            } else {
                Unit unit2 = Unit.INSTANCE;
            }
        }
        if (z) {
            playNext();
        }
    }

    private final void sweepStaleInstanceDirs() {
        boolean zDelete;
        long jCurrentTimeMillis = System.currentTimeMillis() - 300000;
        try {
            File[] fileArrListFiles = this.playRoot.listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    if (!Intrinsics.areEqual(file, this.instanceDir)) {
                        String name = file.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                        Long longOrNull = StringsKt.toLongOrNull(StringsKt.substringBefore$default(name, '-', (String) null, 2, (Object) null));
                        if (longOrNull == null || longOrNull.longValue() < jCurrentTimeMillis) {
                            try {
                                Result.Companion companion = Result.Companion;
                                TtsPlaybackBridge ttsPlaybackBridge = this;
                                if (file.isDirectory()) {
                                    Intrinsics.checkNotNull(file);
                                    zDelete = FilesKt.deleteRecursively(file);
                                } else {
                                    zDelete = file.delete();
                                }
                                Result.constructor-impl(Boolean.valueOf(zDelete));
                            } catch (Throwable th) {
                                Result.Companion companion2 = Result.Companion;
                                Result.constructor-impl(ResultKt.createFailure(th));
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isPlayable(String name) {
        String lowerCase = name.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return StringsKt.endsWith$default(lowerCase, ".mp3", false, 2, (Object) null) || StringsKt.endsWith$default(lowerCase, ".ogg", false, 2, (Object) null) || StringsKt.endsWith$default(lowerCase, ".wav", false, 2, (Object) null) || StringsKt.endsWith$default(lowerCase, ".m4a", false, 2, (Object) null);
    }
}
