.class Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$4;
.super Ljava/lang/Object;
.source "AdvancedOptionsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->initQxdmModeResource(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    .line 869
    iput-object p1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$4;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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

    .line 872
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qxdm mode spinner position ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$4;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0, p3}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$402(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;I)I

    .line 874
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 878
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method