.class Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;
.super Lcom/google/common/collect/ForwardingSortedMap;
.source "Maps.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingSortedMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "TK;+TV;>;"
        }
    .end annotation
.end field

.field private transient descendingMap:Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 3368
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;+TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSortedMap;-><init>()V

    .line 3369
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    .line 3370
    return-void
.end method

.method constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;+TV;>;",
            "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3373
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;+TV;>;"
    .local p2, "descendingMap":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSortedMap;-><init>()V

    .line 3374
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    .line 3375
    iput-object p2, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->descendingMap:Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;

    .line 3376
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3410
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$800(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3416
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 3363
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .line 3363
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3380
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3477
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3459
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->descendingMap:Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;

    .line 3460
    .local v0, "result":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    if-nez v0, :cond_0

    .line 3461
    new-instance v1, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;)V

    iput-object v1, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->descendingMap:Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;

    goto :goto_0

    .line 3462
    :cond_0
    move-object v1, v0

    .line 3460
    :goto_0
    return-object v1
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3434
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$800(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3398
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$800(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3404
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3502
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3497
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3422
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$800(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3428
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 3467
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3440
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$800(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3386
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$800(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3392
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3472
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3446
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3452
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2, "fromInclusive"    # Z
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3491
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    .line 3492
    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 3491
    invoke-static {v0}, Lcom/google/common/collect/Maps;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3482
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3512
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3507
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
