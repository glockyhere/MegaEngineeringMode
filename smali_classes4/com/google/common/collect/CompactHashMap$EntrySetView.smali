.class Lcom/google/common/collect/CompactHashMap$EntrySetView;
.super Ljava/util/AbstractSet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/CompactHashMap;

    .line 741
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$EntrySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 750
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$EntrySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    .line 751
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 760
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$EntrySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 761
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 762
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 763
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 764
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 765
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/CompactHashMap;->access$500(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v3

    .line 766
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v4, v3}, Lcom/google/common/collect/CompactHashMap;->access$600(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 768
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "index":I
    :cond_2
    return v2
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

    .line 755
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$EntrySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 773
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$EntrySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 774
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 775
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 776
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 777
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 778
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v3}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 779
    return v2

    .line 781
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v3}, Lcom/google/common/collect/CompactHashMap;->access$700(Lcom/google/common/collect/CompactHashMap;)I

    move-result v3

    .line 782
    .local v3, "mask":I
    nop

    .line 784
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 785
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 787
    invoke-static {v6}, Lcom/google/common/collect/CompactHashMap;->access$800(Lcom/google/common/collect/CompactHashMap;)Ljava/lang/Object;

    move-result-object v7

    iget-object v6, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 788
    invoke-static {v6}, Lcom/google/common/collect/CompactHashMap;->access$900(Lcom/google/common/collect/CompactHashMap;)[I

    move-result-object v8

    iget-object v6, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 789
    invoke-static {v6}, Lcom/google/common/collect/CompactHashMap;->access$1000(Lcom/google/common/collect/CompactHashMap;)[Ljava/lang/Object;

    move-result-object v9

    iget-object v6, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 790
    invoke-static {v6}, Lcom/google/common/collect/CompactHashMap;->access$1100(Lcom/google/common/collect/CompactHashMap;)[Ljava/lang/Object;

    move-result-object v10

    .line 783
    move v6, v3

    invoke-static/range {v4 .. v10}, Lcom/google/common/collect/CompactHashing;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v4

    .line 791
    .local v4, "index":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 792
    return v2

    .line 795
    :cond_2
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v2, v4, v3}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(II)V

    .line 796
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v2}, Lcom/google/common/collect/CompactHashMap;->access$1210(Lcom/google/common/collect/CompactHashMap;)I

    .line 797
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v2}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    .line 799
    const/4 v2, 0x1

    return v2

    .line 801
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "mask":I
    .end local v4    # "index":I
    :cond_3
    return v2
.end method

.method public size()I
    .locals 1

    .line 745
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$EntrySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    return v0
.end method
