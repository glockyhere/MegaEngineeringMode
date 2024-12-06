.class Lcom/mega/app/engineeringmode/info/InfoActivity$2;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/info/InfoActivity;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

.field final synthetic val$blueToothMacAddr:Ljava/lang/String;

.field final synthetic val$secureBoot:Ljava/lang/String;

.field final synthetic val$totalMemory:Ljava/lang/String;

.field final synthetic val$wifiMacAddr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/info/InfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 285
    iput-object p1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iput-object p2, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->val$totalMemory:Ljava/lang/String;

    iput-object p3, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->val$secureBoot:Ljava/lang/String;

    iput-object p4, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->val$blueToothMacAddr:Ljava/lang/String;

    iput-object p5, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->val$wifiMacAddr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$InfoActivity$2(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 295
    invoke-static {}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onclick switchEnv:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v2, v2, Lcom/mega/app/engineeringmode/info/InfoActivity;->switchEnv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v0, v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->switchEnv:Ljava/lang/String;

    const-string v1, "persist.mega.env"

    invoke-static {v1, v0}, Lcom/mega/nexus/os/MegaSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    const v1, 0x7f0e00da

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 299
    return-void
.end method

.method public run()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$200(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->vin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$300(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->tuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$400(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->vid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$500(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->envText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$600(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->switchEnvText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$600(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/mega/app/engineeringmode/info/-$$Lambda$InfoActivity$2$a4iLxRuLVURNbF6nyagy8pn--Eg;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/info/-$$Lambda$InfoActivity$2$a4iLxRuLVURNbF6nyagy8pn--Eg;-><init>(Lcom/mega/app/engineeringmode/info/InfoActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$900(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/mega/app/engineeringmode/info/InfoActivity$2$1;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/info/InfoActivity$2$1;-><init>(Lcom/mega/app/engineeringmode/info/InfoActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$800(Lcom/mega/app/engineeringmode/info/InfoActivity;)V

    .line 308
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v0, v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->certId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$1000(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0083

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$1000(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0082

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$1100(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->tboxTuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$1200(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->tboxCertID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$1300(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->tboxICCID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$1400(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->huAndroidVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$1500(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->huQnxVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$1600(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->mcuSWMVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$1700(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->huSN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$1800(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$1900(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->val$totalMemory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$2000(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->val$secureBoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$2100(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    iget-object v1, v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->huHWVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$2200(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->val$blueToothMacAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$2300(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->val$wifiMacAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    return-void
.end method
