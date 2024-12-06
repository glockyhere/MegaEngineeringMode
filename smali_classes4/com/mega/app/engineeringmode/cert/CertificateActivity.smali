.class public Lcom/mega/app/engineeringmode/cert/CertificateActivity;
.super Lcom/mega/app/engineeringmode/base/BaseActivity;
.source "CertificateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CERTIFICATE:I = 0x2

.field private static final CERT_CER:I = 0x1

.field private static final CERT_INVALID:I = 0x0

.field private static final CERT_KEY:I = 0x2

.field private static CERT_TYPE:I = 0x0

.field private static final DEFAULT_SIZE:I = 0x1000

.field private static final OS_VERSION:I = 0x3

.field private static final PREPARE_WRITE_STATUS:I = 0x2

.field private static final PROP_OS_VERSION:I = 0x3300000f

.field private static final SELECT_FILE_COED:I = 0x4d2

.field private static final SELECT_FILE_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TUID:I = 0x1

.field private static final VEHICLEINFO_VIN:I = 0x33000002

.field private static final VIN:I


# instance fields
.field private mChooseButton:Landroid/widget/Button;

.field private mChooseTextView:Landroid/widget/TextView;

.field private mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

.field private mEditTextVin:Landroid/widget/EditText;

.field private mReadButton:Landroid/widget/Button;

.field private mReadTextView:Landroid/widget/TextView;

.field private mSelectedId:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mStatus:I

.field private mWriteButton:Landroid/widget/Button;

.field private mWriteContent:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->CERT_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mega/app/engineeringmode/cert/CertificateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/cert/CertificateActivity;
    .param p1, "x1"    # I

    .line 33
    iput p1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mSelectedId:I

    return p1
.end method

.method private readData()V
    .locals 7

    .line 171
    iget v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mSelectedId:I

    const v1, 0x7f0e00ac

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    const v3, 0x3300000f

    invoke-virtual {v0, v3}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getProperty(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "osVersion":Ljava/lang/String;
    sget-object v3, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readData os version ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mReadTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    if-nez v0, :cond_4

    .line 202
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 192
    .end local v0    # "osVersion":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    const-string v1, "ca_cer"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/EcuConnector;->readSecureFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    .local v0, "cert_bytes":[B
    iget-object v1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mReadTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    const-string v2, "ca_key"

    invoke-virtual {v1, v2}, Lcom/mega/app/engineeringmode/common/EcuConnector;->readSecureFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mReadTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 196
    goto :goto_0

    .line 182
    .end local v0    # "cert_bytes":[B
    :cond_2
    iget-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    const-string v3, "tuid"

    invoke-virtual {v0, v3}, Lcom/mega/app/engineeringmode/common/EcuConnector;->readSecureFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 183
    .local v0, "tuidBytes":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 184
    .local v3, "tuidStr":Ljava/lang/String;
    sget-object v4, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readData tuidStr ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v4, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mReadTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    if-nez v0, :cond_4

    .line 187
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 173
    .end local v0    # "tuidBytes":[B
    .end local v3    # "tuidStr":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    const v3, 0x33000002

    invoke-virtual {v0, v3}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getProperty(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "vin":Ljava/lang/String;
    sget-object v3, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readData vin ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v3, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mReadTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    if-nez v0, :cond_4

    .line 177
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 209
    .end local v0    # "vin":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method

.method private readFileData(Ljava/io/InputStream;)Z
    .locals 9
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 266
    const/16 v0, 0x1000

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [B

    .line 267
    .local v2, "temp":[B
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 269
    .local v3, "ret":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 270
    sget-object v0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    const-string v4, "No date to read"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 272
    return v1

    .line 275
    :cond_0
    move v5, v3

    .line 276
    .local v5, "count":I
    :cond_1
    if-lez v3, :cond_3

    .line 277
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v3, v6

    .line 278
    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 279
    :cond_2
    add-int/2addr v5, v3

    .line 280
    if-lt v5, v0, :cond_1

    .line 281
    sget-object v0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    const-string v4, "out of range"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 283
    return v1

    .line 286
    :cond_3
    :goto_0
    sget-object v0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read file count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {v2, v1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 288
    .local v0, "content":[B
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 289
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "textView":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mWriteContent:[B

    .line 291
    iget-object v6, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mChooseTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    sget-object v6, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWriteContent lengh="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mWriteContent:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " read file data ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    nop

    .line 297
    .end local v0    # "content":[B
    .end local v2    # "temp":[B
    .end local v3    # "ret":I
    .end local v4    # "textView":Ljava/lang/String;
    .end local v5    # "count":I
    const/4 v0, 0x1

    return v0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 295
    return v1
.end method

.method private selectFile()V
    .locals 2

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 216
    return-void
.end method

.method private writeData()Z
    .locals 5

    .line 134
    const/4 v0, 0x1

    .line 135
    .local v0, "retVal":Z
    iget v1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mSelectedId:I

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    const v2, 0x3300000f

    iget-object v3, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mWriteContent:[B

    invoke-virtual {v1, v2, v3}, Lcom/mega/app/engineeringmode/common/EcuConnector;->setProperty(I[B)Z

    move-result v0

    .line 161
    sget-object v1, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write os version data retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    goto/16 :goto_0

    .line 145
    :cond_1
    sget v1, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->CERT_TYPE:I

    if-nez v1, :cond_2

    .line 146
    const v1, 0x7f0e00a9

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 148
    const/4 v1, 0x0

    return v1

    .line 150
    :cond_2
    if-ne v1, v2, :cond_3

    .line 151
    iget-object v1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mWriteContent:[B

    const-string v4, "ca_cer"

    invoke-virtual {v1, v4, v2}, Lcom/mega/app/engineeringmode/common/EcuConnector;->writeSecureFile(Ljava/lang/String;[B)Z

    move-result v0

    .line 154
    :cond_3
    sget v1, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->CERT_TYPE:I

    if-ne v1, v3, :cond_4

    .line 155
    iget-object v1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mWriteContent:[B

    const-string v3, "ca_key"

    invoke-virtual {v1, v3, v2}, Lcom/mega/app/engineeringmode/common/EcuConnector;->writeSecureFile(Ljava/lang/String;[B)Z

    move-result v0

    .line 157
    :cond_4
    sget-object v1, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write CERTIFICATE data retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", CERT_TYPE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->CERT_TYPE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    goto :goto_0

    .line 141
    :cond_5
    iget-object v1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mWriteContent:[B

    const-string v3, "tuid"

    invoke-virtual {v1, v3, v2}, Lcom/mega/app/engineeringmode/common/EcuConnector;->writeSecureFile(Ljava/lang/String;[B)Z

    move-result v0

    .line 142
    sget-object v1, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write TUID data retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    goto :goto_0

    .line 137
    :cond_6
    iget-object v1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    const v2, 0x33000002

    iget-object v3, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mWriteContent:[B

    invoke-virtual {v1, v2, v3}, Lcom/mega/app/engineeringmode/common/EcuConnector;->setProperty(I[B)Z

    move-result v0

    .line 138
    sget-object v1, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write VIN data retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    nop

    .line 167
    :goto_0
    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 220
    sget-object v0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult result code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    const/16 v1, 0x4d2

    if-ne p1, v1, :cond_4

    .line 222
    sget-object v1, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "fileUri":Landroid/net/Uri;
    if-eqz p3, :cond_3

    .line 225
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 230
    sget-object v2, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult fileUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " fileUri path ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v2, 0x0

    sput v2, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->CERT_TYPE:I

    .line 233
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "path":Ljava/lang/String;
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 235
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 236
    .local v5, "pos":I
    if-eq v5, v0, :cond_1

    .line 237
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "fileType":Ljava/lang/String;
    sget-object v6, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityResult fileUri fileType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-eqz v0, :cond_1

    .line 240
    const-string v6, "cer"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 241
    sput v4, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->CERT_TYPE:I

    goto :goto_0

    .line 242
    :cond_0
    const-string v6, "key"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 243
    sput v3, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->CERT_TYPE:I

    .line 250
    .end local v0    # "fileType":Ljava/lang/String;
    .end local v5    # "pos":I
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->readFileData(Ljava/io/InputStream;)Z

    move-result v0

    .line 251
    .local v0, "retVal":Z
    if-eqz v0, :cond_2

    .line 252
    iput v3, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mStatus:I

    goto :goto_1

    .line 254
    :cond_2
    const v3, 0x7f0e00aa

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 255
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "retVal":Z
    :goto_1
    goto :goto_2

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 227
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "path":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    const-string v2, "Read failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 261
    .end local v1    # "fileUri":Landroid/net/Uri;
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 262
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090070

    if-eq v0, v1, :cond_5

    const v1, 0x7f090133

    if-eq v0, v1, :cond_4

    const v1, 0x7f0901f1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 101
    .local v0, "result":Z
    iget-object v1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEditTextVin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 102
    const/4 v1, 0x1

    .line 103
    .local v1, "isShowTips":Z
    iget-object v3, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEditTextVin:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "vin":Ljava/lang/String;
    sget-object v4, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write VIN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") from user input"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v4, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    const v5, 0x33000002

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mega/app/engineeringmode/common/EcuConnector;->setProperty(I[B)Z

    move-result v0

    .line 106
    .end local v3    # "vin":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "isShowTips":Z
    :cond_1
    iget v1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 107
    const/4 v1, 0x1

    .line 108
    .restart local v1    # "isShowTips":Z
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->writeData()Z

    move-result v0

    goto :goto_0

    .line 110
    .end local v1    # "isShowTips":Z
    :cond_2
    const/4 v1, 0x0

    .line 111
    .restart local v1    # "isShowTips":Z
    const v3, 0x7f0e00ab

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 114
    :goto_0
    if-eqz v1, :cond_6

    .line 115
    if-eqz v0, :cond_3

    .line 116
    const v3, 0x7f0e00af

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 119
    :cond_3
    const v3, 0x7f0e00ae

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 125
    .end local v0    # "result":Z
    .end local v1    # "isShowTips":Z
    :cond_4
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->readData()V

    .line 126
    goto :goto_1

    .line 97
    :cond_5
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->selectFile()V

    .line 98
    nop

    .line 131
    :cond_6
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f090070

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mChooseButton:Landroid/widget/Button;

    .line 66
    const v0, 0x7f090133

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mReadButton:Landroid/widget/Button;

    .line 67
    const v0, 0x7f0901f1

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mWriteButton:Landroid/widget/Button;

    .line 68
    const v0, 0x7f0901d0

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mReadTextView:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0901ce

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mChooseTextView:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEditTextVin:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mReadTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 72
    iget-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mChooseTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 73
    iget-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mChooseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mReadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mWriteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f0900df

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mSpinner:Landroid/widget/Spinner;

    .line 77
    const/4 v1, 0x1

    iput v1, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mStatus:I

    .line 78
    new-instance v1, Lcom/mega/app/engineeringmode/cert/CertificateActivity$1;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/cert/CertificateActivity$1;-><init>(Lcom/mega/app/engineeringmode/cert/CertificateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 90
    invoke-static {}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getInstance()Lcom/mega/app/engineeringmode/common/EcuConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/cert/CertificateActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    .line 91
    return-void
.end method
