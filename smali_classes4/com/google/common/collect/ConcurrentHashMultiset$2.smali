.class Lcom/google/common/collect/ConcurrentHashMultiset$2;
.super Lcom/google/common/collect/AbstractIterator;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final mapEntries:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/common/collect/ConcurrentHashMultiset;

    .line 508
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$2;, "Lcom/google/common/collect/ConcurrentHashMultiset$2;"
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$2;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 509
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$2;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    .line 510
    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$2;->mapEntries:Ljava/util/Iterator;

    .line 509
    return-void
.end method


# virtual methods
.method protected computeNext()Lcom/google/common/collect/Multiset$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 516
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$2;, "Lcom/google/common/collect/ConcurrentHashMultiset$2;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$2;->mapEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    return-object v0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$2;->mapEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 520
    .local v0, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 521
    .local v1, "count":I
    if-eqz v1, :cond_1

    .line 522
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v2

    return-object v2

    .line 524
    .end local v0    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .end local v1    # "count":I
    :cond_1
    goto :goto_0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 508
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$2;, "Lcom/google/common/collect/ConcurrentHashMultiset$2;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$2;->computeNext()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
