# Required packages
PRODUCT_PACKAGES += \
    Gallery2 \
    Launcher3 \
    messaging \
    Turbo

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# Themes
PRODUCT_PACKAGES += \
    GBoardDarkTheme \
    SystemUIDarkTheme \
    SettingsDarkTheme \
    SystemDarkTheme

# Overlays
PRODUCT_PACKAGES += \
    AmberAccent \
    BlackAccent \
    AquaAccent \
    BlueGreyAccent \
    BrownAccent \
    CyanAccent \
    DeepOrangeAccent \
    DeepPurpleAccent \
    GreenAccent \
    GreyAccent \
    IndigoAccent \
    LightBlueAccent \
    LightGreenAccent \
    LimeAccent \
    OrangeAccent \
    PinkAccent \
    PurpleAccent \
    RedAccent \
    DarkRedAccent \
    YellowAccent \
    WhiteAccent \
    SluttyPinkTheme \
    DarknessMeister \
    SmokedGreenTheme \
    Bl4ckAndYell0Theme \
    OmniTheme \
    FromHellTheme \
    GboardOmniTheme \
    ZeroZeroTheme \
    GboardOmniTheme

PRODUCT_PACKAGES += \
    NotificationsDark \
    NotificationsLight \
    NotificationsPrimary \
    7z \
    bash \
    bzip2 \
    curl \
    e2fsck \
    fsck.ntfs \
    gdbserver \
    htop \
    lib7z \
    libsepol \
    micro_bench \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs \
    openvpn \
    oprofiled \
    pigz \
    powertop \
    sqlite3 \
    strace \
    tune2fs \
    unrar \
    unzip \
    vim \
    wget \
    zip

PRODUCT_PACKAGES += \
    AccentSluttyPink \
    AccentPixel \
    AccentGoldenShower \
    AccentDeepOrange \
    AccentOmni \
    AccentWhite \
    AccentTeal \
    AccentFromHell \
    AccentBlueMonday \
    AccentSmokingGreen \
    AccentDeadRed \
    AccentRottenOrange \
    AccentDeepPurple

PRODUCT_PACKAGES += \
    PrimaryAlmostBlack \
    PrimaryBlack \
    PrimaryOmni \
    PrimaryWhite \
    PrimaryColdWhite \
    PrimaryWarmWhite \
    PrimaryDarkBlue

# Textclassifiers
PRODUCT_PACKAGES += \
    textclassifier.langid.model \
    textclassifier.smartselection.bundle1 \
    textclassifier.smartselection.ar.model \
    textclassifier.smartselection.it.model \
    textclassifier.smartselection.nl.model \
    textclassifier.smartselection.pl.model \
    textclassifier.smartselection.pt.model \
    textclassifier.smartselection.ru.model \
    textclassifier.smartselection.tr.model \
    textclassifier.smartselection.zh.model \
    textclassifier.smartselection.zh-Hant.model


# Omni
PRODUCT_PACKAGES += \
    OmniJaws \
    OmniStyle

# Fonts
PRODUCT_PACKAGES += \
    Fonts

# PrebuiltApks
PRODUCT_PACKAGES += \
    ViaBrowser \
    Phonograph \
    WallpaperPickerGoogle \
    Gcam

 #Colt Wallpapers
 PRODUCT_PACKAGES += \
    ColtPapers
