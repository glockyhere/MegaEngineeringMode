.class public Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;
.super Lcom/google/android/material/picker/MaterialPickerDialogFragment;
.source "MaterialDateRangePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/picker/MaterialPickerDialogFragment<",
        "Landroid/util/Pair<",
        "Ljava/util/Calendar;",
        "Ljava/util/Calendar;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->newInstance(I)Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(I)Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;
    .locals 2
    .param p0, "themeResId"    # I

    .line 42
    new-instance v0, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;

    invoke-direct {v0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;-><init>()V

    .line 44
    .local v0, "materialDateRangePickerDialogFragment":Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v1, "args":Landroid/os/Bundle;
    invoke-static {v1, p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->addThemeToBundle(Landroid/os/Bundle;I)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method protected createMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "Landroid/util/Pair<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/picker/MaterialDateRangePickerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getDefaultThemeAttr()I
    .locals 1

    .line 52
    sget v0, Lcom/google/android/material/R$attr;->materialDateRangePickerDialogTheme:I

    return v0
.end method

.method protected getHeaderText()Ljava/lang/String;
    .locals 7

    .line 62
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialCalendarView;->getSelection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 63
    .local v0, "startAndEnd":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Calendar;Ljava/util/Calendar;>;"
    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_range_header_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "startString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "endString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$string;->mtrl_picker_range_header_selected:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 70
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 68
    return-object v3
.end method
