.class Lcom/google/android/setupcompat/template/FooterBarMixin$1;
.super Ljava/lang/Object;
.source "FooterBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupcompat/template/FooterBarMixin;->createButtonEventListener(I)Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/google/android/setupcompat/template/FooterBarMixin;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 105
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 109
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->access$000(Lcom/google/android/setupcompat/template/FooterBarMixin;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->access$000(Lcom/google/android/setupcompat/template/FooterBarMixin;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 111
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-boolean v1, v1, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 116
    iget v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-static {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->access$100(Lcom/google/android/setupcompat/template/FooterBarMixin;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 117
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_0

    .line 118
    :cond_0
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 114
    :goto_0
    invoke-static {v1, v0, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->access$200(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 122
    .end local v0    # "button":Landroid/widget/Button;
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 137
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->access$000(Lcom/google/android/setupcompat/template/FooterBarMixin;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->access$000(Lcom/google/android/setupcompat/template/FooterBarMixin;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 139
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 126
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->access$000(Lcom/google/android/setupcompat/template/FooterBarMixin;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->access$000(Lcom/google/android/setupcompat/template/FooterBarMixin;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 128
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->access$300(Lcom/google/android/setupcompat/template/FooterBarMixin;)V

    .line 133
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    return-void
.end method
