pragma Singleton

import QtQuick

QtObject {
    // ─────────────────────────────
    // Base colors (Material 3)
    // ─────────────────────────────

    readonly property color background: "{{ colors.background.default.hex }}"
    readonly property color backgroundOn: "{{ colors.on_background.default.hex }}"

    readonly property color surface: "{{ colors.surface.default.hex }}"
    readonly property color surfaceOn: "{{ colors.on_surface.default.hex }}"
    readonly property color surfaceVariant: "{{ colors.surface_variant.default.hex }}"
    readonly property color surfaceVariantOn: "{{ colors.on_surface_variant.default.hex }}"

    readonly property color surfaceDim: "{{ colors.surface_dim.default.hex }}"
    readonly property color surfaceBright: "{{ colors.surface_bright.default.hex }}"
    readonly property color surfaceContainerLowest: "{{ colors.surface_container_lowest.default.hex }}"
    readonly property color surfaceContainerLow: "{{ colors.surface_container_low.default.hex }}"
    readonly property color surfaceContainer: "{{ colors.surface_container.default.hex }}"
    readonly property color surfaceContainerHigh: "{{ colors.surface_container_high.default.hex }}"
    readonly property color surfaceContainerHighest: "{{ colors.surface_container_highest.default.hex }}"

    readonly property color primary: "{{ colors.primary.default.hex }}"
    readonly property color primaryOn: "{{ colors.on_primary.default.hex }}"
    readonly property color primaryContainer: "{{ colors.primary_container.default.hex }}"
    readonly property color primaryContainerOn: "{{ colors.on_primary_container.default.hex }}"

    readonly property color secondary: "{{ colors.secondary.default.hex }}"
    readonly property color secondaryOn: "{{ colors.on_secondary.default.hex }}"
    readonly property color secondaryContainer: "{{ colors.secondary_container.default.hex }}"
    readonly property color secondaryContainerOn: "{{ colors.on_secondary_container.default.hex }}"

    readonly property color tertiary: "{{ colors.tertiary.default.hex }}"
    readonly property color tertiaryOn: "{{ colors.on_tertiary.default.hex }}"
    readonly property color tertiaryContainer: "{{ colors.tertiary_container.default.hex }}"
    readonly property color tertiaryContainerOn: "{{ colors.on_tertiary_container.default.hex }}"

    readonly property color error: "{{ colors.error.default.hex }}"
    readonly property color errorOn: "{{ colors.on_error.default.hex }}"
    readonly property color errorContainer: "{{ colors.error_container.default.hex }}"
    readonly property color errorContainerOn: "{{ colors.on_error_container.default.hex }}"

    readonly property color outline: "{{ colors.outline.default.hex }}"
    readonly property color outlineVariant: "{{ colors.outline_variant.default.hex }}"

    readonly property color inverseSurface: "{{ colors.inverse_surface.default.hex }}"
    readonly property color inverseSurfaceOn: "{{ colors.inverse_on_surface.default.hex }}"
    readonly property color inversePrimary: "{{ colors.inverse_primary.default.hex }}"

    readonly property color shadow: "{{ colors.shadow.default.hex }}"
    readonly property color scrim: "{{ colors.scrim.default.hex }}"

    // ─────────────────────────────
    // Custom / Status colors
    // ─────────────────────────────

    readonly property color warning: "#f4c669"
    readonly property color warningOn: "#402d00"

    readonly property color success: "#8bd17c"
    readonly property color successOn: "#0b3300"

    // ─────────────────────────────
    // Semantic & Legacy Notch Aliases
    // ─────────────────────────────

    readonly property color bg: background
    readonly property color fg: surfaceOn

    // ─────────────────────────────
    // Alpha colors
    // ─────────────────────────────

    readonly property color bgAlpha:
        Qt.rgba(bg.r, bg.g, bg.b, 0.85)

    readonly property color fgAlpha:
        Qt.rgba(fg.r, fg.g, fg.b, 0.85)

    readonly property color surfaceAlpha:
        Qt.rgba(surface.r, surface.g, surface.b, 0.4)

    readonly property color surfaceVariantAlpha:
        Qt.rgba(surfaceVariant.r, surfaceVariant.g, surfaceVariant.b, 0.75)

    readonly property color surfaceContainerAlpha:
        Qt.rgba(surfaceContainer.r, surfaceContainer.g, surfaceContainer.b, 0.85)

    readonly property color primaryAlpha:
        Qt.rgba(primary.r, primary.g, primary.b, 0.85)

    readonly property color secondaryAlpha:
        Qt.rgba(secondary.r, secondary.g, secondary.b, 0.85)

    readonly property color tertiaryAlpha:
        Qt.rgba(tertiary.r, tertiary.g, tertiary.b, 0.85)

    readonly property color errorAlpha:
        Qt.rgba(error.r, error.g, error.b, 0.85)
}
