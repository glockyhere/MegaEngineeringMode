.class Lcom/google/common/collect/AbstractBiMap$EntrySet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final esDelegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .locals 0

    .line 359
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 360
    iget-object p1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {p1}, Lcom/google/common/collect/AbstractBiMap;->access$100(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->esDelegate:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/AbstractBiMap;
    .param p2, "x1"    # Lcom/google/common/collect/AbstractBiMap$1;

    .line 359
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap$EntrySet;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 369
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    .line 370
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 420
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 425
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 358
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 358
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 364
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->esDelegate:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->entrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 378
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->esDelegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 383
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    iget-object v1, v1, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractBiMap;->access$100(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->esDelegate:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 390
    const/4 v1, 0x1

    return v1

    .line 379
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 430
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 435
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 408
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    .line 409
    .local v0, "result":[Ljava/lang/Object;
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 415
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$EntrySet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
