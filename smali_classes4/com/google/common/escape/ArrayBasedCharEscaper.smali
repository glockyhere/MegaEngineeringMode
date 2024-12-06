.class public abstract Lcom/google/common/escape/ArrayBasedCharEscaper;
.super Lcom/google/common/escape/CharEscaper;
.source "ArrayBasedCharEscaper.java"


# annotations
.annotation runtime Lcom/google/common/escape/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private final replacements:[[C

.field private final replacementsLength:I

.field private final safeMax:C

.field private final safeMin:C


# direct methods
.method protected constructor <init>(Lcom/google/common/escape/ArrayBasedEscaperMap;CC)V
    .locals 1
    .param p1, "escaperMap"    # Lcom/google/common/escape/ArrayBasedEscaperMap;
    .param p2, "safeMin"    # C
    .param p3, "safeMax"    # C

    .line 87
    invoke-direct {p0}, Lcom/google/common/escape/CharEscaper;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->getReplacementArray()[[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacements:[[C

    .line 91
    array-length v0, v0

    iput v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacementsLength:I

    .line 92
    if-ge p3, p2, :cond_0

    .line 95
    const/4 p3, 0x0

    .line 96
    const p2, 0xffff

    .line 98
    :cond_0
    iput-char p2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMin:C

    .line 99
    iput-char p3, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMax:C

    .line 100
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;CC)V
    .locals 1
    .param p2, "safeMin"    # C
    .param p3, "safeMax"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;CC)V"
        }
    .end annotation

    .line 71
    .local p1, "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->create(Ljava/util/Map;)Lcom/google/common/escape/ArrayBasedEscaperMap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/common/escape/ArrayBasedCharEscaper;-><init>(Lcom/google/common/escape/ArrayBasedEscaperMap;CC)V

    .line 72
    return-void
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 111
    .local v1, "c":C
    iget v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacementsLength:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacements:[[C

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    :cond_0
    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMax:C

    if-gt v1, v2, :cond_2

    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMin:C

    if-ge v1, v2, :cond_1

    goto :goto_1

    .line 109
    .end local v1    # "c":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .restart local v1    # "c":C
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/google/common/escape/ArrayBasedCharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 115
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_3
    return-object p1
.end method

.method protected final escape(C)[C
    .locals 1
    .param p1, "c"    # C
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 128
    iget v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacementsLength:I

    if-ge p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacements:[[C

    aget-object v0, v0, p1

    .line 130
    .local v0, "chars":[C
    if-eqz v0, :cond_0

    .line 131
    return-object v0

    .line 134
    .end local v0    # "chars":[C
    :cond_0
    iget-char v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMin:C

    if-lt p1, v0, :cond_1

    iget-char v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMax:C

    if-gt p1, v0, :cond_1

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/escape/ArrayBasedCharEscaper;->escapeUnsafe(C)[C

    move-result-object v0

    return-object v0
.end method

.method protected abstract escapeUnsafe(C)[C
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method
