.class final synthetic Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/time/chrono/ChronoZonedDateTime;

    check-cast p2, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-static {p1, p2}, Ljava/time/chrono/AbstractChronology;->lambda$-java_time_chrono_AbstractChronology_6799(Ljava/time/chrono/ChronoZonedDateTime;Ljava/time/chrono/ChronoZonedDateTime;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s$2;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
