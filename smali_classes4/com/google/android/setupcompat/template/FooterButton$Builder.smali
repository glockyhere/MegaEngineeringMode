.class public Lcom/google/android/setupcompat/template/FooterButton$Builder;
.super Ljava/lang/Object;
.source "FooterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/template/FooterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonType:I

.field private final context:Landroid/content/Context;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private text:Ljava/lang/String;

.field private theme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->text:Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->buttonType:I

    .line 319
    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->theme:I

    .line 322
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->context:Landroid/content/Context;

    .line 323
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 7

    .line 356
    new-instance v6, Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    iget v3, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->buttonType:I

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->theme:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;IILcom/google/android/setupcompat/template/FooterButton$1;)V

    return-object v6
.end method

.method public setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .locals 0
    .param p1, "buttonType"    # I

    .line 345
    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->buttonType:I

    .line 346
    return-object p0
.end method

.method public setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 339
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    .line 340
    return-object p0
.end method

.method public setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .locals 1
    .param p1, "text"    # I

    .line 333
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->text:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 327
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->text:Ljava/lang/String;

    .line 328
    return-object p0
.end method

.method public setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .locals 0
    .param p1, "theme"    # I

    .line 351
    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->theme:I

    .line 352
    return-object p0
.end method
