.class Lcom/android/internal/telephony/GsmCdmaPhone$4;
.super Ljava/lang/Object;
.source "GsmCdmaPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;->fetchFdnList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/GsmCdmaPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string/jumbo v3, "fetchFdnList()"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->-wrap0(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->-get1(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v3

    const/16 v4, 0x6f3b

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string/jumbo v3, "mFdnRecords is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->-wrap1(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string/jumbo v3, "FDN updated"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->-wrap1(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fetchFdnList: FDN["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->-wrap0(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
