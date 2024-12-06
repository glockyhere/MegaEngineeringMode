.class Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;
.super Ljava/lang/Object;
.source "OfflineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/offline/OfflineActivity;->trim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    .line 139
    iput-object p1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->access$200(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->access$100(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->access$200(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/mega/app/engineeringmode/offline/OfflineActivity$1$1;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity$1$1;-><init>(Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    return-void
.end method
