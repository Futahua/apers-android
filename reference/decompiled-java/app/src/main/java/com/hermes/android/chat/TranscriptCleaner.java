package com.hermes.android.chat;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.CharsKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: TurnDetector.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\f\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0000¢\u0006\u0002\b\u000eJ\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\bJ\u000e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/chat/TranscriptCleaner;", "", "<init>", "()V", "ANSI", "Lkotlin/text/Regex;", "OSC", "BOX_CHARS", "", "DECORATION_LINE", "isNoise", "", "c", "", "isNoise$app_release", "strip", "text", "cleanForPreview", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TranscriptCleaner {
    public static final TranscriptCleaner INSTANCE = new TranscriptCleaner();
    private static final Regex ANSI = new Regex("\\x1B(?:[@-Z\\\\-_]|\\[[0-?]*[ -/]*[@-~])");
    private static final Regex OSC = new Regex("\\x1B\\][^\\x07]*\\x07");
    private static final String BOX_CHARS = "│─╭╮╰╯├┤┬┴┼┏┓┗┛┣┫┳┻╋═║╔╗╚╝╠╣╦╩╬▁▂▃▄▅▆▇█░▒▓·•";
    private static final Regex DECORATION_LINE = new Regex("^[\\s" + Regex.Companion.escape(BOX_CHARS) + "]+$");
    public static final int $stable = 8;

    private TranscriptCleaner() {
    }

    public final boolean isNoise$app_release(char c) {
        return CharsKt.isWhitespace(c) || StringsKt.contains$default(BOX_CHARS, c, false, 2, (Object) null);
    }

    public final String strip(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return StringsKt.replace$default(ANSI.replace(OSC.replace(text, ""), ""), "\r", "", false, 4, (Object) null);
    }

    public final String cleanForPreview(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return StringsKt.trim(SequencesKt.joinToString$default(SequencesKt.filterNot(StringsKt.lineSequence(strip(text)), new Function1() { // from class: com.hermes.android.chat.TranscriptCleaner$$ExternalSyntheticLambda0
            public final Object invoke(Object obj) {
                return Boolean.valueOf(TranscriptCleaner.cleanForPreview$lambda$0((String) obj));
            }
        }), "\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null)).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean cleanForPreview$lambda$0(String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        return DECORATION_LINE.matches(str);
    }
}
