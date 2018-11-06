.class public Ljava/time/zone/IcuZoneRulesProvider;
.super Ljava/time/zone/ZoneRulesProvider;
.source "IcuZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;
    }
.end annotation


# static fields
.field private static final MAX_TRANSITIONS:I = 0x2710

.field private static final SECONDS_IN_DAY:I = 0x15180


# instance fields
.field private final cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/time/zone/ZoneRulesProvider;-><init>()V

    new-instance v0, Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;-><init>(I)V

    iput-object v0, p0, Ljava/time/zone/IcuZoneRulesProvider;->cache:Llibcore/util/BasicLruCache;

    return-void
.end method

.method static generateZoneRules(Ljava/lang/String;)Ljava/time/zone/ZoneRules;
    .locals 28

    invoke-static/range {p0 .. p0}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/icu/impl/OlsonTimeZone;

    move/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Unexpected time zone class "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZone;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v16

    check-cast v22, Landroid/icu/impl/OlsonTimeZone;

    invoke-virtual/range {v22 .. v22}, Landroid/icu/impl/OlsonTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    const/16 v23, 0x0

    aget-object v9, v14, v23

    check-cast v9, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual {v9}, Landroid/icu/util/InitialTimeZoneRule;->getRawOffset()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v9}, Landroid/icu/util/InitialTimeZoneRule;->getRawOffset()I

    move-result v23

    invoke-virtual {v9}, Landroid/icu/util/InitialTimeZoneRule;->getDSTSavings()I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v5

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/high16 v24, -0x8000000000000000L

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v19

    const/16 v20, 0x1

    :goto_0
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v17

    const/4 v8, 0x0

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    new-instance v23, Ljava/time/zone/ZoneOffsetTransition;

    sget-object v24, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v24

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v27

    invoke-direct/range {v23 .. v27}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object/from16 v0, v23

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    :cond_0
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v23

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v24

    add-int v7, v23, v24

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v24

    add-int v18, v23, v24

    move/from16 v0, v18

    if-eq v7, v0, :cond_1

    new-instance v23, Ljava/time/zone/ZoneOffsetTransition;

    sget-object v24, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v24

    invoke-static {v7}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v26

    invoke-static/range {v18 .. v18}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v27

    invoke-direct/range {v23 .. v27}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    :cond_1
    const-string/jumbo v23, "Transition changed neither total nor raw offset."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v8, v0, v1}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/icu/util/AnnualTimeZoneRule;

    move/from16 v23, v0

    if-eqz v23, :cond_8

    if-nez v10, :cond_3

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    move-object/from16 v10, v17

    check-cast v10, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v10}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v23

    const v24, 0x7fffffff

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v23, 0x1

    :goto_1
    const-string/jumbo v24, "AnnualTimeZoneRule is not permanent."

    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v23, 0x2710

    move/from16 v0, v20

    move/from16 v1, v23

    if-gt v0, v1, :cond_a

    const/16 v23, 0x1

    :goto_3
    const-string/jumbo v24, "More than 10000 transitions."

    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v24

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v19

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    :cond_2
    const/16 v23, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v11, v17

    check-cast v11, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v11}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v23

    const v24, 0x7fffffff

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    const/16 v23, 0x1

    :goto_4
    const-string/jumbo v24, "AnnualTimeZoneRule is not permanent."

    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v24

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v23

    move-object/from16 v0, v23

    if-ne v0, v10, :cond_7

    const/16 v23, 0x1

    :goto_5
    const-string/jumbo v24, "Unexpected rule after 2 AnnualTimeZoneRules."

    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v10, :cond_5

    if-eqz v11, :cond_b

    const/16 v23, 0x1

    :goto_6
    const-string/jumbo v24, "Only one AnnualTimeZoneRule."

    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v13}, Ljava/time/zone/IcuZoneRulesProvider;->toZoneOffsetTransitionRule(Landroid/icu/util/AnnualTimeZoneRule;I)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v23

    move/from16 v0, v23

    invoke-static {v11, v0}, Ljava/time/zone/IcuZoneRulesProvider;->toZoneOffsetTransitionRule(Landroid/icu/util/AnnualTimeZoneRule;I)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v0, v21

    invoke-static {v4, v5, v15, v0, v12}, Ljava/time/zone/ZoneRules;->of(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/time/zone/ZoneRules;

    move-result-object v23

    return-object v23

    :cond_6
    const/16 v23, 0x0

    goto :goto_4

    :cond_7
    const/16 v23, 0x0

    goto :goto_5

    :cond_8
    if-nez v10, :cond_9

    const/16 v23, 0x1

    :goto_7
    const-string/jumbo v24, "Unexpected rule after AnnualTimeZoneRule."

    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const/16 v23, 0x0

    goto :goto_7

    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_3

    :cond_b
    const/16 v23, 0x0

    goto :goto_6
.end method

.method private static millisToOffset(I)Ljava/time/ZoneOffset;
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method private static toZoneOffsetTransitionRule(Landroid/icu/util/AnnualTimeZoneRule;I)Ljava/time/zone/ZoneOffsetTransitionRule;
    .locals 14

    invoke-virtual {p0}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v9

    sget-object v11, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/time/Month;->plus(J)Ljava/time/Month;

    move-result-object v0

    sget-object v11, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/time/DayOfWeek;->plus(J)Ljava/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    new-instance v11, Ljava/time/zone/ZoneRulesException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unexpected date rule type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v11

    :pswitch_0
    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v12

    long-to-int v10, v12

    const v11, 0x15180

    if-ne v10, v11, :cond_0

    sget-object v3, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v11

    packed-switch v11, :pswitch_data_1

    new-instance v11, Ljava/time/zone/ZoneRulesException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unexpected time rule type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v11

    :pswitch_1
    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Ljava/time/Month;->maxLength()I

    move-result v11

    neg-int v11, v11

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v1, v11, -0x1

    goto :goto_0

    :pswitch_3
    new-instance v11, Ljava/time/zone/ZoneRulesException;

    const-string/jumbo v12, "Date rule type DOW is unsupported"

    invoke-direct {v11, v12}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_0
    int-to-long v12, v10

    invoke-static {v12, v13}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v3

    const/4 v4, 0x0

    goto :goto_1

    :pswitch_4
    sget-object v5, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    :goto_2
    invoke-virtual {p0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v11

    invoke-static {v11}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v6

    invoke-virtual {p0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v11

    add-int/2addr v11, p1

    invoke-static {v11}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v7

    invoke-virtual {p0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v11

    invoke-virtual {p0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v11}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Ljava/time/zone/ZoneOffsetTransitionRule;->of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v11

    return-object v11

    :pswitch_5
    sget-object v5, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    goto :goto_2

    :pswitch_6
    sget-object v5, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static verify(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/time/zone/ZoneRulesException;

    const-string/jumbo v1, "Failed verification of zone %s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected provideRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;
    .locals 1

    iget-object v0, p0, Ljava/time/zone/IcuZoneRulesProvider;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/zone/ZoneRules;

    return-object v0
.end method

.method protected provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->provideRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method protected provideZoneIds()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v2, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {v2, v3, v3}, Landroid/icu/impl/ZoneMeta;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v2, "GMT+0"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v2, "GMT-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method
