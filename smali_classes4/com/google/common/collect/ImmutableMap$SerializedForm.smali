.class Lcom/google/common/collect/ImmutableMap$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final USE_LEGACY_SERIALIZATION:Z = true

.field private static final serialVersionUID:J


# instance fields
.field private final keys:Ljava/lang/Object;

.field private final values:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 935
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$SerializedForm;, "Lcom/google/common/collect/ImmutableMap$SerializedForm<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 938
    .local v0, "keys":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 939
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 941
    .local v2, "i":I
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 942
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Object;+Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v2

    .line 943
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v2

    .line 944
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Object;+Ljava/lang/Object;>;"
    add-int/lit8 v2, v2, 0x1

    .line 945
    goto :goto_0

    .line 946
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->keys:Ljava/lang/Object;

    .line 947
    iput-object v1, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->values:Ljava/lang/Object;

    .line 948
    return-void
.end method


# virtual methods
.method final legacyReadResolve()Ljava/lang/Object;
    .locals 6

    .line 977
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$SerializedForm;, "Lcom/google/common/collect/ImmutableMap$SerializedForm<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->keys:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 978
    .local v0, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->values:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 980
    .local v1, "values":[Ljava/lang/Object;, "[TV;"
    array-length v2, v0

    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableMap$SerializedForm;->makeBuilder(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 982
    .local v2, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 983
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {v2, v4, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 982
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 985
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method makeBuilder(I)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 992
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$SerializedForm;, "Lcom/google/common/collect/ImmutableMap$SerializedForm<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    return-object v0
.end method

.method final readResolve()Ljava/lang/Object;
    .locals 7

    .line 956
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$SerializedForm;, "Lcom/google/common/collect/ImmutableMap$SerializedForm<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->keys:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/common/collect/ImmutableSet;

    if-nez v1, :cond_0

    .line 957
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$SerializedForm;->legacyReadResolve()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 960
    :cond_0
    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 961
    .local v0, "keySet":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TK;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$SerializedForm;->values:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/ImmutableCollection;

    .line 963
    .local v1, "values":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<TV;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableMap$SerializedForm;->makeBuilder(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 965
    .local v2, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    .line 966
    .local v3, "keyIter":Lcom/google/common/collect/UnmodifiableIterator;, "Lcom/google/common/collect/UnmodifiableIterator<TK;>;"
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    .line 968
    .local v4, "valueIter":Lcom/google/common/collect/UnmodifiableIterator;, "Lcom/google/common/collect/UnmodifiableIterator<TV;>;"
    :goto_0
    invoke-virtual {v3}, Lcom/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 969
    invoke-virtual {v3}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 972
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    return-object v5
.end method
