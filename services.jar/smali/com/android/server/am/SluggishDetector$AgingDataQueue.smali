.class Lcom/android/server/am/SluggishDetector$AgingDataQueue;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgingDataQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mElementList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;",
            ">;"
        }
    .end annotation
.end field

.field private mElementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->get(Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/SluggishDetector$AgingDataQueue;J)Ljava/util/LinkedList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->getElementListForPeriodicLaunchReport(J)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/am/SluggishDetector$AgingDataQueue;JJ)Ljava/util/LinkedList;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->getElementListForPeriodicMemoryReport(JJ)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->getAverageLaunchTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;JJIII)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->add(Ljava/lang/String;JJIII)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;III)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->add(Ljava/lang/String;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;III)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->clear()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;-><init>()V

    return-void
.end method

.method private add(Ljava/lang/String;JJIII)V
    .locals 12

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->init()V

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :goto_0
    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v3 .. v9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-wrap2(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;JJII)V

    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez p6, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    move/from16 v0, p6

    if-le v4, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-static {v10}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get10(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "add() - Exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance v3, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;-><init>(Ljava/lang/String;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)V

    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private add(Ljava/lang/String;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;III)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->init()V

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :goto_0
    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-static/range {v3 .. v15}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-wrap1(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez p12, :cond_1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    move/from16 v0, p12

    if-le v4, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get10(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v2

    :cond_1
    return-void

    :cond_2
    new-instance v3, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;-><init>(Ljava/lang/String;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private checkStatus()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private clear()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->init()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->init()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-wrap0(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private get(Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->init()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAverageLaunchTime(Ljava/lang/String;)J
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->get(Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get3(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v2

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private getElementListForPeriodicLaunchReport(J)Ljava/util/LinkedList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Lcom/android/server/am/SluggishDetector$AgingDataQueue$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$1;-><init>(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_0

    :cond_1
    return-object v2
.end method

.method private getElementListForPeriodicMemoryReport(JJ)Ljava/util/LinkedList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v6, Lcom/android/server/am/SluggishDetector$AgingDataQueue$2;

    invoke-direct {v6, p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$2;-><init>(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    int-to-long v6, v2

    cmp-long v6, v6, p3

    if-gez v6, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-wrap3(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)V

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/android/server/am/SluggishDetector$AgingDataQueue$3;

    invoke-direct {v6, p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$3;-><init>(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, p1

    if-ltz v6, :cond_1

    :cond_2
    return-object v3
.end method

.method private init()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    return-void
.end method
