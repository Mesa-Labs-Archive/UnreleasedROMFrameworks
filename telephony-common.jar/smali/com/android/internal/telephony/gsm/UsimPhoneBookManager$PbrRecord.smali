.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrRecord"
.end annotation


# instance fields
.field private mFileIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterFileRecordNum:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I

    return p1
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;[B)V
    .locals 3

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PBR rec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V

    return-void
.end method


# virtual methods
.method parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_0
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_0
    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v0, v6

    if-lt v0, v9, :cond_1

    array-length v0, v6

    if-le v0, v10, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid TLV length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    array-length v0, v6

    if-ne v0, v10, :cond_3

    aget-byte v0, v6, v9

    and-int/lit16 v4, v0, 0xff

    :cond_3
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, v6, v1

    and-int/lit16 v1, v1, 0xff

    or-int v3, v0, v1

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;IIII)V

    invoke-virtual {v8, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V
    .locals 5

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
