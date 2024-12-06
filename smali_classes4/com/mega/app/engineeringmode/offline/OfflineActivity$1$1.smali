.class Lcom/mega/app/engineeringmode/offline/OfflineActivity$1$1;
.super Ljava/lang/Object;
.source "OfflineActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;

    .line 143
    iput-object p1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$1$1;->this$1:Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 146
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$1$1;->this$1:Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;

    iget-object v0, v0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->access$100(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->notifyDataSetChanged()V

    .line 147
    return-void
.end method
