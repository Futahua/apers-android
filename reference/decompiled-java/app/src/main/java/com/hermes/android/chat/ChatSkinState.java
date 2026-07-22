package com.hermes.android.chat;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ChatSkinState.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001:\u0001(B1\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0014\u0010\u0015\u001a\u00020\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003J\u0014\u0010\u0017\u001a\u00020\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001aJ\u0014\u0010\u001d\u001a\u00020\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003J\u0006\u0010\u001e\u001a\u00020\u0000J\u000f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0007HÆ\u0003J3\u0010\"\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010#\u001a\u00020\u00122\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020\u001aHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000bR\u0011\u0010\u0011\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006)"}, d2 = {"Lcom/hermes/android/chat/ChatSkinState;", "", "history", "", "Lcom/hermes/android/chat/ChatBubble;", "live", "phase", "Lcom/hermes/android/chat/ChatSkinState$Phase;", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;)V", "getHistory", "()Ljava/util/List;", "getLive", "getPhase", "()Lcom/hermes/android/chat/ChatSkinState$Phase;", "bubbles", "getBubbles", "inputEnabled", "", "getInputEnabled", "()Z", "withHistory", "dbBubbles", "withHistoryTurnInFlight", "onUserSend", "text", "", "onLivePreview", "previewText", "onTurnEnd", "freezeLiveIntoHistory", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "Phase", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ChatSkinState {
    public static final int $stable = 8;
    private final List<ChatBubble> history;
    private final List<ChatBubble> live;
    private final Phase phase;

    public ChatSkinState() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ChatSkinState copy$default(ChatSkinState chatSkinState, List list, List list2, Phase phase, int i, Object obj) {
        if ((i & 1) != 0) {
            list = chatSkinState.history;
        }
        if ((i & 2) != 0) {
            list2 = chatSkinState.live;
        }
        if ((i & 4) != 0) {
            phase = chatSkinState.phase;
        }
        return chatSkinState.copy(list, list2, phase);
    }

    public final List<ChatBubble> component1() {
        return this.history;
    }

    public final List<ChatBubble> component2() {
        return this.live;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Phase getPhase() {
        return this.phase;
    }

    public final ChatSkinState copy(List<ChatBubble> history, List<ChatBubble> live, Phase phase) {
        Intrinsics.checkNotNullParameter(history, "history");
        Intrinsics.checkNotNullParameter(live, "live");
        Intrinsics.checkNotNullParameter(phase, "phase");
        return new ChatSkinState(history, live, phase);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChatSkinState)) {
            return false;
        }
        ChatSkinState chatSkinState = (ChatSkinState) other;
        return Intrinsics.areEqual(this.history, chatSkinState.history) && Intrinsics.areEqual(this.live, chatSkinState.live) && this.phase == chatSkinState.phase;
    }

    public int hashCode() {
        return (((this.history.hashCode() * 31) + this.live.hashCode()) * 31) + this.phase.hashCode();
    }

    public String toString() {
        return "ChatSkinState(history=" + this.history + ", live=" + this.live + ", phase=" + this.phase + ")";
    }

    public ChatSkinState(List<ChatBubble> list, List<ChatBubble> list2, Phase phase) {
        Intrinsics.checkNotNullParameter(list, "history");
        Intrinsics.checkNotNullParameter(list2, "live");
        Intrinsics.checkNotNullParameter(phase, "phase");
        this.history = list;
        this.live = list2;
        this.phase = phase;
    }

    public /* synthetic */ ChatSkinState(List list, List list2, Phase phase, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt.emptyList() : list2, (i & 4) != 0 ? Phase.IDLE : phase);
    }

    public final List<ChatBubble> getHistory() {
        return this.history;
    }

    public final List<ChatBubble> getLive() {
        return this.live;
    }

    public final Phase getPhase() {
        return this.phase;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ChatSkinState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/hermes/android/chat/ChatSkinState$Phase;", "", "<init>", "(Ljava/lang/String;I)V", "INITIALIZING", "IDLE", "SENDING", "WAITING_RESPONSE", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Phase {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Phase[] $VALUES;
        public static final Phase INITIALIZING = new Phase("INITIALIZING", 0);
        public static final Phase IDLE = new Phase("IDLE", 1);
        public static final Phase SENDING = new Phase("SENDING", 2);
        public static final Phase WAITING_RESPONSE = new Phase("WAITING_RESPONSE", 3);

        private static final /* synthetic */ Phase[] $values() {
            return new Phase[]{INITIALIZING, IDLE, SENDING, WAITING_RESPONSE};
        }

        public static EnumEntries<Phase> getEntries() {
            return $ENTRIES;
        }

        private Phase(String str, int i) {
        }

        static {
            Phase[] phaseArr$values = $values();
            $VALUES = phaseArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(phaseArr$values);
        }

        public static Phase valueOf(String str) {
            return (Phase) Enum.valueOf(Phase.class, str);
        }

        public static Phase[] values() {
            return (Phase[]) $VALUES.clone();
        }
    }

    public final List<ChatBubble> getBubbles() {
        return CollectionsKt.plus(this.history, this.live);
    }

    public final boolean getInputEnabled() {
        return this.phase == Phase.IDLE;
    }

    public final ChatSkinState withHistory(List<ChatBubble> dbBubbles) {
        Intrinsics.checkNotNullParameter(dbBubbles, "dbBubbles");
        return copy(dbBubbles, CollectionsKt.emptyList(), Phase.IDLE);
    }

    public final ChatSkinState withHistoryTurnInFlight(List<ChatBubble> dbBubbles) {
        Intrinsics.checkNotNullParameter(dbBubbles, "dbBubbles");
        return copy(dbBubbles, CollectionsKt.emptyList(), Phase.WAITING_RESPONSE);
    }

    public final ChatSkinState onUserSend(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return copy$default(this, null, CollectionsKt.listOf(new ChatBubble(BubbleRole.USER, text, null, true, 4, null)), Phase.SENDING, 1, null);
    }

    public final ChatSkinState onLivePreview(String previewText) {
        Object next;
        Intrinsics.checkNotNullParameter(previewText, "previewText");
        if (this.phase != Phase.SENDING && this.phase != Phase.WAITING_RESPONSE) {
            return this;
        }
        Iterator<T> it = this.live.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((ChatBubble) next).getRole() == BubbleRole.USER) {
                break;
            }
        }
        ChatBubble chatBubble = (ChatBubble) next;
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        if (chatBubble != null) {
            listCreateListBuilder.add(chatBubble);
        }
        if (!StringsKt.isBlank(previewText)) {
            listCreateListBuilder.add(new ChatBubble(BubbleRole.ASSISTANT, previewText, null, true, 4, null));
        }
        return copy$default(this, null, CollectionsKt.build(listCreateListBuilder), Phase.WAITING_RESPONSE, 1, null);
    }

    public final ChatSkinState onTurnEnd(List<ChatBubble> dbBubbles) {
        Intrinsics.checkNotNullParameter(dbBubbles, "dbBubbles");
        return copy(dbBubbles, CollectionsKt.emptyList(), Phase.IDLE);
    }

    public final ChatSkinState freezeLiveIntoHistory() {
        List<ChatBubble> list = this.history;
        List<ChatBubble> list2 = this.live;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(ChatBubble.copy$default((ChatBubble) it.next(), null, null, null, false, 7, null));
        }
        return copy(CollectionsKt.plus(list, arrayList), CollectionsKt.emptyList(), Phase.IDLE);
    }
}
