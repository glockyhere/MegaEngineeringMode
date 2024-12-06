.class public abstract Lcom/google/common/collect/ForwardingTable;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingTable.java"

# interfaces
.implements Lcom/google/common/collect/Table;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingObject;",
        "Lcom/google/common/collect/Table<",
        "TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 53
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->clear()V

    .line 54
    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 73
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 78
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 83
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 88
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Table<",
            "TR;TC;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 35
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 149
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 94
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 154
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 99
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 107
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/Table;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    .local p1, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<+TR;+TC;+TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->putAll(Lcom/google/common/collect/Table;)V

    .line 113
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 119
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->rowMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 139
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/google/common/collect/ForwardingTable;, "Lcom/google/common/collect/ForwardingTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
