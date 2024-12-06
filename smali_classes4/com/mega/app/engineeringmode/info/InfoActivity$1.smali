.class Lcom/mega/app/engineeringmode/info/InfoActivity$1;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Lmega/car/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/app/engineeringmode/info/InfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/info/InfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 162
    iput-object p1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$1;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Lmega/car/hardware/CarPropertyValue;

    .line 165
    invoke-static {}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$1;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$100(Lcom/mega/app/engineeringmode/info/InfoActivity;ILjava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 3
    .param p1, "propId"    # I
    .param p2, "zone"    # I

    .line 173
    invoke-static {}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method
