.class Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;
.super Ljava/lang/Object;
.source "RecyclerItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/setupdesign/items/ItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

.field final synthetic val$viewHolder:Lcom/google/android/setupdesign/items/ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;Lcom/google/android/setupdesign/items/ItemViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    .line 150
    iput-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->this$0:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    iput-object p2, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->val$viewHolder:Lcom/google/android/setupdesign/items/ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->val$viewHolder:Lcom/google/android/setupdesign/items/ItemViewHolder;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/items/ItemViewHolder;->getItem()Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 154
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    iget-object v1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->this$0:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-static {v1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->access$000(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;)Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->this$0:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-static {v1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->access$000(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;)Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;->onItemSelected(Lcom/google/android/setupdesign/items/IItem;)V

    .line 157
    :cond_0
    return-void
.end method
