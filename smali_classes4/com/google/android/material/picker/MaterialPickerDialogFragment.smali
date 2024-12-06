.class public abstract Lcom/google/android/material/picker/MaterialPickerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "MaterialPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/DialogFragment;"
    }
.end annotation


# static fields
.field private static final THEME_RESOURCE_ID_KEY:Ljava/lang/String; = "themeResId"


# instance fields
.field private header:Landroid/widget/TextView;

.field private materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation
.end field

.field private selection:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;

.field private themeResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    .local p0, "this":Lcom/google/android/material/picker/MaterialPickerDialogFragment;, "Lcom/google/android/material/picker/MaterialPickerDialogFragment<TS;>;"
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/picker/MaterialPickerDialogFragment;

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->updateHeader()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/picker/MaterialPickerDialogFragment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/picker/MaterialPickerDialogFragment;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->selection:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)Lcom/google/android/material/picker/MaterialCalendarView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/picker/MaterialPickerDialogFragment;

    .line 49
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    return-object v0
.end method

.method protected static addThemeToBundle(Landroid/os/Bundle;I)V
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "themeResId"    # I

    .line 87
    const-string v0, "themeResId"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method private static getThemeResource(Landroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultThemeAttr"    # I
    .param p2, "themeResId"    # I

    .line 92
    if-eqz p2, :cond_0

    .line 93
    return p2

    .line 95
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 96
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 97
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private updateHeader()V
    .locals 2

    .line 202
    .local p0, "this":Lcom/google/android/material/picker/MaterialPickerDialogFragment;, "Lcom/google/android/material/picker/MaterialPickerDialogFragment<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->header:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method


# virtual methods
.method protected abstract createMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation
.end method

.method protected abstract getDefaultThemeAttr()I
.end method

.method protected abstract getHeaderText()Ljava/lang/String;
.end method

.method public final getMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/google/android/material/picker/MaterialPickerDialogFragment;, "Lcom/google/android/material/picker/MaterialPickerDialogFragment<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    return-object v0
.end method

.method public final getSelection()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lcom/google/android/material/picker/MaterialPickerDialogFragment;, "Lcom/google/android/material/picker/MaterialPickerDialogFragment<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->selection:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSimpleDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 187
    .local p0, "this":Lcom/google/android/material/picker/MaterialPickerDialogFragment;, "Lcom/google/android/material/picker/MaterialPickerDialogFragment<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 102
    .local p0, "this":Lcom/google/android/material/picker/MaterialPickerDialogFragment;, "Lcom/google/android/material/picker/MaterialPickerDialogFragment<TS;>;"
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 105
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_date_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 106
    nop

    .line 108
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getDefaultThemeAttr()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "themeResId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 107
    invoke-static {v0, v1, v2}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getThemeResource(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->themeResId:I

    .line 109
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->createMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    .line 110
    new-instance v1, Lcom/google/android/material/picker/MaterialPickerDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$1;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MaterialCalendarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 122
    .local p0, "this":Lcom/google/android/material/picker/MaterialPickerDialogFragment;, "Lcom/google/android/material/picker/MaterialPickerDialogFragment<TS;>;"
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->themeResId:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 131
    .local p0, "this":Lcom/google/android/material/picker/MaterialPickerDialogFragment;, "Lcom/google/android/material/picker/MaterialPickerDialogFragment<TS;>;"
    sget v0, Lcom/google/android/material/R$layout;->mtrl_picker_dialog:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "root":Landroid/view/View;
    sget v1, Lcom/google/android/material/R$id;->date_picker_header_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->header:Landroid/widget/TextView;

    .line 133
    sget v1, Lcom/google/android/material/R$id;->date_picker_calendar_view_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 134
    .local v1, "calendarViewFrame":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 135
    sget v2, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 136
    .local v2, "confirmButton":Landroid/widget/Button;
    sget v3, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 138
    .local v3, "cancelButton":Landroid/widget/Button;
    new-instance v4, Lcom/google/android/material/picker/MaterialPickerDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$2;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance v4, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->updateHeader()V

    .line 155
    return-object v0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 160
    .local p0, "this":Lcom/google/android/material/picker/MaterialPickerDialogFragment;, "Lcom/google/android/material/picker/MaterialPickerDialogFragment<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 161
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 164
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 165
    return-void
.end method

.method public final setSimpleDateFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0
    .param p1, "simpleDateFormat"    # Ljava/text/SimpleDateFormat;

    .line 182
    .local p0, "this":Lcom/google/android/material/picker/MaterialPickerDialogFragment;, "Lcom/google/android/material/picker/MaterialPickerDialogFragment<TS;>;"
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 183
    return-void
.end method
