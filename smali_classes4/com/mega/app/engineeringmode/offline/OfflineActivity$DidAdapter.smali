.class Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;
.super Landroid/widget/BaseAdapter;
.source "OfflineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/app/engineeringmode/offline/OfflineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DidAdapter"
.end annotation


# instance fields
.field private mViewDidHolder:Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;

.field final synthetic this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;


# direct methods
.method private constructor <init>(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/app/engineeringmode/offline/OfflineActivity;Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/app/engineeringmode/offline/OfflineActivity;
    .param p2, "x1"    # Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;

    .line 187
    invoke-direct {p0, p1}, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;-><init>(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->access$300(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .line 196
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->access$300(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .line 201
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .line 206
    if-nez p2, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0035

    const/4 v2, 0x0

    .line 208
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 209
    new-instance v0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;-><init>(Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;)V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->mViewDidHolder:Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;

    .line 210
    const v1, 0x7f0901c6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;->mName:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->mViewDidHolder:Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;

    const v1, 0x7f0901c7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;->mValue:Landroid/widget/TextView;

    .line 212
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->mViewDidHolder:Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->mViewDidHolder:Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->access$300(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/app/engineeringmode/offline/DidItemInfo;

    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/offline/DidItemInfo;->getDidName()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->mViewDidHolder:Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->access$300(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/app/engineeringmode/offline/DidItemInfo;

    invoke-virtual {v1}, Lcom/mega/app/engineeringmode/offline/DidItemInfo;->getDidKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 220
    .local v1, "keyID":I
    iget-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-static {v2}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->access$500(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Lcom/mega/app/engineeringmode/common/EcuConnector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getIntProperty(I)I

    move-result v2

    .line 221
    .local v2, "value":I
    invoke-static {}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->access$600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " getView key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->this$0:Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    .line 222
    invoke-static {v5}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->access$300(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mega/app/engineeringmode/offline/DidItemInfo;

    invoke-virtual {v5}, Lcom/mega/app/engineeringmode/offline/DidItemInfo;->getDidKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;->mViewDidHolder:Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;

    iget-object v3, v3, Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;->mValue:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    return-object p2
.end method
