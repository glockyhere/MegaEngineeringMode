.class Lcom/google/common/collect/Maps$NavigableKeySet;
.super Lcom/google/common/collect/Maps$SortedKeySet;
.source "Maps.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavigableKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$SortedKeySet<",
        "TK;TV;>;",
        "Ljava/util/NavigableSet<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3876
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$SortedKeySet;-><init>(Ljava/util/SortedMap;)V

    .line 3877
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 3899
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 3927
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3922
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 3893
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3946
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 3951
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Maps$NavigableKeySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 3905
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 3887
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic map()Ljava/util/Map;
    .locals 1

    .line 3872
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3881
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method bridge synthetic map()Ljava/util/SortedMap;
    .locals 1

    .line 3872
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3911
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3917
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
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
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3936
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p3, "toElement":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
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
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 3941
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p2, "toElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/Maps$NavigableKeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3956
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 3961
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Maps$NavigableKeySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
