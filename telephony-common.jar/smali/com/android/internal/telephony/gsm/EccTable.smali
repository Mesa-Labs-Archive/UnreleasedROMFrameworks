.class public final Lcom/android/internal/telephony/gsm/EccTable;
.super Ljava/lang/Object;
.source "EccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    }
.end annotation


# static fields
.field static final FILE_ECC_LIST:Ljava/lang/String; = "/data/csc/ecclists.dat"

.field private static final LOCAL_DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static table:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/EccTable$EccEntry;",
            ">;"
        }
    .end annotation
.end field

.field static updated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "450"

    const-string/jumbo v3, "112/1,911/4,119/4,118/19,122/8,113/3,125/9,111/7,117/18"

    const-string/jumbo v4, "112/1,911/4,119/4,118/19,122/8,113/3,125/9,111/7,117/18,999,000,08,110"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "206"

    const-string/jumbo v3, "112,911,100"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,100"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "234"

    const-string/jumbo v3, "112,911,999,9999,1122,141999,141112"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,9999,1122,141999,141112"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "235"

    const-string/jumbo v3, "112,911,999,9999,1122,141999,141112"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,9999,1122,141999,141112"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "242"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,08,118,119,110"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "262"

    const-string/jumbo v3, "112,911,110"

    const-string/jumbo v4, "112,911,999,000,08,118,119,110"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "272"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "280"

    const-string/jumbo v3, "112,911,199"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,199"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "286"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,122,131,132,136,140,151,155,156,157,158,159,161,168,177,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310026"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310160"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310170"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310200"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310210"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310220"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310230"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310240"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310250"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310260"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310270"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310280"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310290"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310310"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310330"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310410"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310490"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310660"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "310800"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "334050"

    const-string/jumbo v3, "911"

    const-string/jumbo v4, "911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "33450"

    const-string/jumbo v3, "911"

    const-string/jumbo v4, "911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "33405"

    const-string/jumbo v3, "911"

    const-string/jumbo v4, "911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "334090"

    const-string/jumbo v3, "911"

    const-string/jumbo v4, "911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "33490"

    const-string/jumbo v3, "911"

    const-string/jumbo v4, "911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "33409"

    const-string/jumbo v3, "911"

    const-string/jumbo v4, "911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "36449"

    const-string/jumbo v3, "112,911,919"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,919"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "422"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "424"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "42501"

    const-string/jumbo v3, "112,911,100"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,100"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "42502"

    const-string/jumbo v3, "112,911,100"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,100"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "42503"

    const-string/jumbo v3, "112,911,100"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,100"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "426"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "427"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "430"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "431"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "440"

    const-string/jumbo v3, "112,911,110,118,119"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "441"

    const-string/jumbo v3, "112,911,110,118,119"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "454"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "455"

    const-string/jumbo v3, "112,911,999,000,08,110,118,119,120,122"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,120,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "460"

    const-string/jumbo v3, "112,911,999,000,08,110,118,119,120,122"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,120,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "466"

    const-string/jumbo v3, "112,911,110,119"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "502"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "505"

    const-string/jumbo v3, "112,911,000"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "530"

    const-string/jumbo v3, "112,911,000,111"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,111"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "520"

    const-string/jumbo v3, "112"

    const-string/jumbo v4, "112"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "537"

    const-string/jumbo v3, "110,111,112,911"

    const-string/jumbo v4, "112,911,08,000,110,118,119,999,111"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "542"

    const-string/jumbo v3, "112,911,917"

    const-string/jumbo v4, "112,911,08,000,110,118,119,999,917"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "548"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,08,000,110,118,119,999"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "606"

    const-string/jumbo v3, "112,911,08"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "620"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "634"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "639"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "659"

    const-string/jumbo v3, "112,911,999"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "70403"

    const-string/jumbo v3, "112,911,122"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "70604"

    const-string/jumbo v3, "112,911,122"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "71606"

    const-string/jumbo v3, "112,911,105"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,105"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "724"

    const-string/jumbo v3, "112,911,190"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,190"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "730"

    const-string/jumbo v3, "112,911,133"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,133"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "732101"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "732123"

    const-string/jumbo v3, "112,123"

    const-string/jumbo v4, "112,911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "73212"

    const-string/jumbo v3, "112,123"

    const-string/jumbo v4, "112,911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "732103"

    const-string/jumbo v3, "112,123"

    const-string/jumbo v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "732111"

    const-string/jumbo v3, "112,123"

    const-string/jumbo v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "732130"

    const-string/jumbo v3, "112,123"

    const-string/jumbo v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "732187"

    const-string/jumbo v3, "123"

    const-string/jumbo v4, "123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "73401"

    const-string/jumbo v3, "112,911,171"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "73402"

    const-string/jumbo v3, "112,911,171"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "73403"

    const-string/jumbo v3, "112,911,171"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "73404"

    const-string/jumbo v3, "112,911"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "73406"

    const-string/jumbo v3, "112,911,*1,*171,171"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "73601"

    const-string/jumbo v3, "08,000,110,111,112,114,118,119,120,128,129,156,160,911,999"

    const-string/jumbo v4, "08,000,110,111,112,114,118,119,120,128,129,156,160,911,999"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "73602"

    const-string/jumbo v3, "112,911,110,129"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,129"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "73603"

    const-string/jumbo v3, "112,911,110,129"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,129"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string/jumbo v2, "748"

    const-string/jumbo v3, "112,911,104,109"

    const-string/jumbo v4, "112,911,999,000,08,110,118,119,104,109"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emergencyNumbersForPLMN(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/EccTable;->entryForPLMN(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    return-object v1
.end method

.method private static entryForPLMN(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v1, p0, v3, v3}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    return-object v2
.end method

.method public static printEccTable()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized updateEccTable(Ljava/lang/String;)V
    .locals 17

    const-class v13, Lcom/android/internal/telephony/gsm/EccTable;

    monitor-enter v13

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v12, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v12, :cond_0

    if-nez p0, :cond_1

    :cond_0
    monitor-exit v13

    return-void

    :cond_1
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/StringReader;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v9, :cond_3

    if-eqz v9, :cond_2

    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v13

    return-void

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v12, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateEccTable() Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v12

    move-object v8, v9

    :goto_1
    monitor-exit v13

    throw v12

    :cond_3
    :try_start_4
    const-string/jumbo v12, "\n"

    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v12, v1

    const/4 v14, 0x2

    if-ne v12, v14, :cond_7

    const/4 v12, 0x0

    aget-object v3, v1, v12

    const/4 v12, 0x1

    aget-object v4, v1, v12

    const-string/jumbo v12, ""

    invoke-static {v12, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable;->updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v9, :cond_5

    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_2
    move-object v8, v9

    :cond_6
    :goto_3
    monitor-exit v13

    return-void

    :cond_7
    :goto_4
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v10

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v11

    if-eqz v11, :cond_8

    move-object v3, v11

    :cond_8
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    move-object v4, v11

    :cond_9
    invoke-static {v10, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable;->updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v10, v11

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_8
    const-string/jumbo v12, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateEccTable() Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v6

    :goto_5
    :try_start_9
    const-string/jumbo v12, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateEccTable() IOException : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v8, :cond_6

    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v2

    :try_start_b
    const-string/jumbo v12, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateEccTable() Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v12

    goto/16 :goto_1

    :catch_4
    move-exception v5

    :goto_6
    if-eqz v8, :cond_6

    :try_start_c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_3

    :catch_5
    move-exception v2

    :try_start_d
    const-string/jumbo v12, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateEccTable() Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_3

    :catchall_2
    move-exception v12

    :goto_7
    if-eqz v8, :cond_a

    :try_start_e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_a
    :goto_8
    :try_start_f
    throw v12

    :catch_6
    move-exception v2

    const-string/jumbo v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateEccTable() Exception : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_8

    :catchall_3
    move-exception v12

    move-object v8, v9

    goto :goto_7

    :catchall_4
    move-exception v12

    move-object v10, v11

    move-object v8, v9

    goto :goto_7

    :catch_7
    move-exception v5

    move-object v8, v9

    goto :goto_6

    :catch_8
    move-exception v5

    move-object v10, v11

    move-object v8, v9

    goto :goto_6

    :catch_9
    move-exception v6

    move-object v8, v9

    goto/16 :goto_5

    :catch_a
    move-exception v6

    move-object v10, v11

    move-object v8, v9

    goto/16 :goto_5
.end method

.method public static updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return v6

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v2, p0, v5, v5}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    const/4 v0, 0x0

    if-lez v3, :cond_3

    move v0, v3

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object p1, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object p2, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    :goto_2
    if-gez v3, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    return v6

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    new-instance v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v5, v5}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_6
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_3
    const/4 v4, 0x1

    return v4

    :cond_7
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iput-object p1, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    iput-object p2, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    :cond_9
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method
