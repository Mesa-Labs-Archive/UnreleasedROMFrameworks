.class Landroid/widget/TimePickerClockDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerClockDelegate$1;,
        Landroid/widget/TimePickerClockDelegate$2;,
        Landroid/widget/TimePickerClockDelegate$3;,
        Landroid/widget/TimePickerClockDelegate$4;,
        Landroid/widget/TimePickerClockDelegate$5;,
        Landroid/widget/TimePickerClockDelegate$6;,
        Landroid/widget/TimePickerClockDelegate$7;,
        Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;,
        Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DELAY_COMMIT_MILLIS:J = 0x7d0L

.field private static final FROM_EXTERNAL_API:I = 0x0

.field private static final FROM_INPUT_PICKER:I = 0x2

.field private static final FROM_RADIAL_PICKER:I = 0x1

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final HOUR_INDEX:I = 0x0

.field private static final MINUTE_INDEX:I = 0x1

.field private static final PM:I = 0x1


# instance fields
.field private mAllowAutoAdvance:Z

.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mCommitHour:Ljava/lang/Runnable;

.field private final mCommitMinute:Ljava/lang/Runnable;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHourFormatShowLeadingZero:Z

.field private mHourFormatStartsAtZero:Z

.field private final mHourView:Lcom/android/internal/widget/NumericTextView;

.field private mIs24Hour:Z

.field private mIsAmPmAtStart:Z

.field private mIsEnabled:Z

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private final mMinuteView:Lcom/android/internal/widget/NumericTextView;

.field private final mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private final mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private mRadialPickerModeEnabled:Z

.field private final mRadialTimePickerHeader:Landroid/view/View;

.field private final mRadialTimePickerModeButton:Landroid/widget/ImageButton;

.field private final mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

.field private final mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

.field private final mSelectHours:Ljava/lang/String;

.field private final mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTextInputPickerHeader:Landroid/view/View;

.field private final mTextInputPickerModeEnabledDescription:Ljava/lang/String;

.field private final mTextInputPickerView:Landroid/widget/TextInputTimePickerView;


# direct methods
.method static synthetic -get0(Landroid/widget/TimePickerClockDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    return v0
.end method

.method static synthetic -get1(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/TimePickerClockDelegate;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/TimePickerClockDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->setAmOrPm(I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/TimePickerClockDelegate;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/TimePickerClockDelegate;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/TimePickerClockDelegate;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->toggleRadialPickerMode()V

    return-void
.end method

.method static synthetic -wrap6(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->tryVibrate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x1010098

    aput v1, v0, v2

    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    new-array v0, v3, [I

    const v1, 0x1010033

    aput v1, v0, v2

    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 21

    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    new-instance v17, Landroid/widget/TimePickerClockDelegate$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$1;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    new-instance v17, Landroid/widget/TimePickerClockDelegate$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$2;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    new-instance v17, Landroid/widget/TimePickerClockDelegate$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$3;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    new-instance v17, Landroid/widget/TimePickerClockDelegate$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$4;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    new-instance v17, Landroid/widget/TimePickerClockDelegate$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$5;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    new-instance v17, Landroid/widget/TimePickerClockDelegate$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$6;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v17, Landroid/widget/TimePickerClockDelegate$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$7;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v17, 0x1040936

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    const v17, 0x104093b

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    const/16 v17, 0xc

    const v18, 0x1090139

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v10, v11, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    const v17, 0x102052e

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v17, 0x1020301

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    const v19, 0x1040936

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const v17, 0x10204b6

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    const v17, 0x1020388

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    const v19, 0x104093b

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x3b

    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/widget/NumericTextView;->setRange(II)V

    const v17, 0x10201e5

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static/range {p2 .. p2}, Landroid/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x10201e3

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RadioButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v18, v6, v18

    invoke-static/range {v18 .. v18}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x102040b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RadioButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v18, v6, v18

    invoke-static/range {v18 .. v18}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    const/4 v9, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/widget/TimePickerClockDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    if-nez v9, :cond_1

    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    :cond_1
    const v17, 0x1020329

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const v17, 0x1020430

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RadialTimePickerView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadialTimePickerView;->setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V

    const v17, 0x102032d

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextInputTimePickerView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextInputTimePickerView;->setListener(Landroid/widget/TextInputTimePickerView$OnValueTypedListener;)V

    const v17, 0x102053f

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/TimePickerClockDelegate$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$8;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040a52

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040a53

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerModeEnabledDescription:Ljava/lang/String;

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->updateHourFormat()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v8, v1, v2}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    return-void
.end method

.method private applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 13

    const/4 v12, 0x0

    const v11, 0x10102fe

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v11}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-object p1

    :cond_1
    const v6, 0x10100a1

    invoke-virtual {p1, v6}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0xa

    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    const/16 v6, 0x8

    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    :goto_0
    if-eqz v0, :cond_2

    if-nez v2, :cond_4

    :cond_2
    return-object v12

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-direct {p0, v0, v3}, Landroid/widget/TimePickerClockDelegate;->multiplyAlphaComponent(IF)I

    move-result v2

    goto :goto_0

    :cond_4
    new-array v4, v10, [[I

    new-array v6, v9, [I

    aput v11, v6, v8

    aput-object v6, v4, v8

    new-array v6, v8, [I

    aput-object v6, v4, v9

    new-array v1, v10, [I

    aput v0, v1, v8

    aput v2, v1, v9

    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v6
.end method

.method private static ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void
.end method

.method private getCurrentItemShowing()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    return v0
.end method

.method private getLocalizedHour(I)I
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-nez v0, :cond_0

    rem-int/lit8 p1, p1, 0xc

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_2

    const/16 p1, 0x18

    :cond_1
    :goto_0
    return p1

    :cond_2
    const/16 p1, 0xc

    goto :goto_0
.end method

.method private initialize(IIZI)V
    .locals 0

    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    iput p2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iput-boolean p3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-direct {p0, p4}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    return-void
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5

    array-length v3, p1

    if-lez v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-char v4, p1, v2

    if-ne v0, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method private multiplyAlphaComponent(IF)I
    .locals 5

    const v3, 0xffffff

    and-int v2, p1, v3

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v1, v3, 0xff

    int-to-float v3, v1

    mul-float/2addr v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    shl-int/lit8 v3, v0, 0x18

    or-int/2addr v3, v2

    return v3
.end method

.method static final obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 4

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_1
    return-void
.end method

.method private setAmOrPm(I)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_0
    return-void
.end method

.method private setAmPmAtStart(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    if-eq v1, p1, :cond_2

    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/NumericTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/NumericTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private setCurrentItemShowing(IZZ)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/NumericTextView;->setActivated(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    if-ne p1, v1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumericTextView;->setActivated(Z)V

    return-void

    :cond_1
    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private setHourInternal(IIZ)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, p1, p3}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    if-eq p2, v0, :cond_2

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    const/16 v2, 0xc

    if-ge p1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)Z

    :cond_2
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    :cond_3
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    return-void
.end method

.method private setMinuteInternal(II)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    invoke-direct {p0, p1, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    if-eq p2, v1, :cond_1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    return-void
.end method

.method private toggleRadialPickerMode()V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0, v2}, Landroid/widget/TextInputTimePickerView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    const v1, 0x108015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v2}, Landroid/widget/RadialTimePickerView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/TextInputTimePickerView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    const v1, 0x10801a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerModeEnabledDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    goto :goto_0
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    :cond_1
    return-void
.end method

.method private tryVibrate()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->performHapticFeedback(I)Z

    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setActivated(Z)V

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setActivated(Z)V

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateHeaderAmPm()V
    .locals 4

    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    const-string/jumbo v3, "hm"

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setAmPmAtStart(Z)V

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private updateHeaderHour(IZ)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private updateHeaderMinute(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private updateHeaderSeparator()V
    .locals 6

    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Hm"

    :goto_0
    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    new-array v2, v4, [C

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->lastIndexOfAny(Ljava/lang/String;[C)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const-string/jumbo v3, ":"

    :goto_1
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v4, v3}, Landroid/widget/TextInputTimePickerView;->updateSeparator(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v4, "hm"

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method private updateHourFormat()V
    .locals 15

    const/16 v14, 0x4b

    const/16 v13, 0x48

    const/4 v11, 0x1

    iget-object v12, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v10, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "Hm"

    :goto_0
    invoke-static {v12, v10}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v13, :cond_0

    const/16 v10, 0x68

    if-ne v1, v10, :cond_4

    :cond_0
    move v3, v1

    add-int/lit8 v10, v4, 0x1

    if-ge v10, v5, :cond_1

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v1, v10, :cond_1

    const/4 v9, 0x1

    :cond_1
    iput-boolean v9, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    if-eq v3, v14, :cond_2

    if-ne v3, v13, :cond_5

    :cond_2
    move v10, v11

    :goto_2
    iput-boolean v10, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    iget-boolean v10, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    if-eqz v10, :cond_6

    const/4 v8, 0x0

    :goto_3
    iget-boolean v10, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v10, :cond_7

    const/16 v10, 0x17

    :goto_4
    add-int v7, v10, v8

    iget-object v10, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v10, v8, v7}, Lcom/android/internal/widget/NumericTextView;->setRange(II)V

    iget-object v10, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-boolean v11, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/NumericTextView;->setShowLeadingZeroes(Z)V

    iget-object v10, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v10}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v10

    invoke-virtual {v10}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v4, 0x0

    :goto_5
    const/16 v10, 0xa

    if-ge v4, v10, :cond_8

    aget-object v10, v2, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    const-string/jumbo v10, "hm"

    goto :goto_0

    :cond_4
    if-eq v1, v14, :cond_0

    const/16 v10, 0x6b

    if-eq v1, v10, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/16 v10, 0xb

    goto :goto_4

    :cond_8
    iget-object v10, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    mul-int/lit8 v11, v6, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/TextInputTimePickerView;->setHourFormat(I)V

    return-void
.end method

.method private updateRadialPicker(I)V
    .locals 4

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->initialize(IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method private updateTextInputPicker()V
    .locals 6

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v1

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget v3, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    iget-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextInputTimePickerView;->updateTextInputValues(IIIZZ)V

    return-void

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private updateUI(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderSeparator()V

    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/TimePickerClockDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getAmView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getHour()I
    .locals 3

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getAmOrPm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    return v1

    :cond_1
    rem-int/lit8 v1, v0, 0xc

    return v1
.end method

.method public getHourView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    return v0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method public getPmView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public is24Hour()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    const/4 v0, 0x1

    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v3, :cond_0

    const/16 v0, 0x81

    :goto_0
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v4

    const/16 v5, 0xb

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v3}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/16 v0, 0x41

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    instance-of v1, p1, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->is24HourMode()Z

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getCurrentItemShowing()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 6

    new-instance v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24Hour()Z

    move-result v4

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentItemShowing()I

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setEnabled(Z)V

    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHourFormat()V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    :cond_0
    return-void
.end method

.method public setMinute(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void
.end method

.method public validateInput()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0}, Landroid/widget/TextInputTimePickerView;->validateInput()Z

    move-result v0

    return v0
.end method
