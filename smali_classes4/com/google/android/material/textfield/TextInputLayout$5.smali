.class Lcom/google/android/material/textfield/TextInputLayout$5;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 1059
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$5;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 1062
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$5;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lcom/google/android/material/textfield/TextInputLayout;->access$200(Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 1063
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$5;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    iget-boolean v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$5;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    .line 1066
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 1069
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 1072
    return-void
.end method
