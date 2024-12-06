.class Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;
.super Landroid/os/Handler;
.source "AdvancedOptionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;
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

    .line 183
    iput-object p1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 186
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f0e0023

    const v2, 0x7f0e0066

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 248
    :pswitch_1
    invoke-static {}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rollback failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    const-string v1, "\u56de\u6eda\u5931\u8d25\uff0c\u6761\u4ef6\u4e0d\u6ee1\u8db3"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 251
    goto/16 :goto_0

    .line 229
    :pswitch_2
    invoke-static {}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_QXDM_MODE_STATE_ENABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$500(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$400(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 231
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$600(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$600(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE_DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u5f53\u524d\u72b6\u6001 "

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$700(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$600(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$600(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$700(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$600(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":ENABLE"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v4}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$600(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$700(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u72b6\u6001 state:ENABLE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    const-string v1, "QXDM_MODE:ENABLE"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    goto/16 :goto_0

    .line 216
    :pswitch_3
    invoke-static {}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_QXDM_MODE_STATE_DISABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$500(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$400(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 218
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$600(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$700(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v2}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$600(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":DISABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v4}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$600(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$700(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "state:DISABLE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    const-string v1, "QXDM_MODE:DISABLE"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    goto :goto_0

    .line 213
    :pswitch_4
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$200(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 214
    goto :goto_0

    .line 210
    :pswitch_5
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$200(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0e0024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 211
    goto :goto_0

    .line 207
    :pswitch_6
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$200(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 208
    goto :goto_0

    .line 204
    :pswitch_7
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$100(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0e0065

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 205
    goto :goto_0

    .line 201
    :pswitch_8
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$100(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 202
    goto :goto_0

    .line 198
    :pswitch_9
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$100(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 199
    goto :goto_0

    .line 195
    :pswitch_a
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    const v1, 0x7f0e00ca

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    goto :goto_0

    .line 189
    :pswitch_b
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$000(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0e0063

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 190
    goto :goto_0

    .line 192
    :pswitch_c
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$000(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0e0097

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 193
    nop

    .line 255
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
