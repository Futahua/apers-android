package com.hermes.android.llama;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ControlTokenSanitizer.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0005J\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\bH\u0002J\u001c\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0005J\"\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u0006\u0010\t\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0005R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/llama/ControlTokenSanitizer;", BuildConfig.FLAVOR, "<init>", "()V", "FILLER_CANDIDATES", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "sanitize", BuildConfig.FLAVOR, "content", "tokens", "neutralizeToken", "tok", "fillerStr", "containsAnyToken", BuildConfig.FLAVOR, "survivingTokens", "UnneutralizableContentException", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ControlTokenSanitizer {
    public static final int $stable;
    private static final List<Character> FILLER_CANDIDATES;
    public static final ControlTokenSanitizer INSTANCE = new ControlTokenSanitizer();

    private ControlTokenSanitizer() {
    }

    static {
        Iterable intRange = new IntRange(64976, 65007);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRange, 10));
        IntIterator it = intRange.iterator();
        while (it.hasNext()) {
            arrayList.add(Character.valueOf((char) it.nextInt()));
        }
        FILLER_CANDIDATES = CollectionsKt.plus(arrayList, CollectionsKt.listOf(new Character[]{(char) 65532, (char) 65533}));
        $stable = 8;
    }

    /* JADX INFO: compiled from: ControlTokenSanitizer.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/hermes/android/llama/ControlTokenSanitizer$UnneutralizableContentException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "message", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class UnneutralizableContentException extends Exception {
        public static final int $stable = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UnneutralizableContentException(String str) {
            super(str);
            Intrinsics.checkNotNullParameter(str, "message");
        }
    }

    public final String sanitize(String content, List<String> tokens) throws UnneutralizableContentException {
        Object next;
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        String str = content;
        if (str.length() == 0 || tokens.isEmpty()) {
            return content;
        }
        List<String> list = tokens;
        boolean z = list instanceof Collection;
        if (!z || !list.isEmpty()) {
            for (String str2 : list) {
                if (str2.length() > 0 && StringsKt.contains$default(str, str2, false, 2, (Object) null)) {
                    Iterator<T> it = FILLER_CANDIDATES.iterator();
                    loop1: while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        char cCharValue = ((Character) next).charValue();
                        if (!z || !list.isEmpty()) {
                            Iterator<T> it2 = list.iterator();
                            while (it2.hasNext()) {
                                if (StringsKt.indexOf$default((String) it2.next(), cCharValue, 0, false, 6, (Object) null) >= 0) {
                                    break;
                                }
                            }
                            break loop1;
                        }
                        break;
                    }
                    Character ch = (Character) next;
                    if (ch == null) {
                        throw new UnneutralizableContentException("no safe filler char — every non-character candidate appears in a special token");
                    }
                    String strValueOf = String.valueOf(ch.charValue());
                    String strReplace$default = content;
                    for (String str3 : tokens) {
                        String str4 = str3;
                        if (str4.length() != 0 && StringsKt.contains$default(strReplace$default, str4, false, 2, (Object) null)) {
                            strReplace$default = StringsKt.replace$default(strReplace$default, str3, neutralizeToken(str3, strValueOf), false, 4, (Object) null);
                        }
                    }
                    for (String str5 : tokens) {
                        String str6 = str5;
                        if (str6.length() > 0 && StringsKt.contains$default(strReplace$default, str6, false, 2, (Object) null)) {
                            strReplace$default = StringsKt.replace$default(strReplace$default, str5, strValueOf, false, 4, (Object) null);
                        }
                    }
                    for (String str7 : tokens) {
                        if (str7.length() > 0 && StringsKt.contains$default(strReplace$default, str7, false, 2, (Object) null)) {
                            throw new UnneutralizableContentException("special token survived sanitization");
                        }
                    }
                    return strReplace$default;
                }
            }
        }
        return content;
    }

    private final String neutralizeToken(String tok, String fillerStr) {
        String str = tok;
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            if (!CharsKt.isWhitespace(str.charAt(i))) {
                break;
            }
            i++;
        }
        if (i < 0 || tok.codePointCount(0, tok.length()) < 2) {
            return fillerStr;
        }
        int iCharCount = i + Character.charCount(tok.codePointAt(i));
        String strSubstring = tok.substring(0, iCharCount);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        String strSubstring2 = tok.substring(iCharCount);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        return strSubstring + " " + strSubstring2;
    }

    public final boolean containsAnyToken(String content, List<String> tokens) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        List<String> list = tokens;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (String str : list) {
            if (str.length() > 0 && StringsKt.contains$default(content, str, false, 2, (Object) null)) {
                return true;
            }
        }
        return false;
    }

    public final List<String> survivingTokens(String content, List<String> tokens) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        try {
            String strSanitize = sanitize(content, tokens);
            ArrayList arrayList = new ArrayList();
            for (Object obj : tokens) {
                String str = (String) obj;
                if (str.length() > 0 && StringsKt.contains$default(strSanitize, str, false, 2, (Object) null)) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        } catch (UnneutralizableContentException unused) {
            return tokens;
        }
    }
}
