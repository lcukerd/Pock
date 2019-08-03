//
//  Preferences.swift
//  Pock
//
//  Created by Pierluigi Galdi on 12/10/2018.
//  Copyright © 2018 Pierluigi Galdi. All rights reserved.
//

import Foundation
import Preferences
import Defaults

let isProd: Bool = true

extension PreferencePane.Identifier {
    static let general                 = Identifier("general")
    static let dock_widget             = Identifier("dock_widget")
    static let status_widget           = Identifier("status_widget")
    static let controler_center_widget = Identifier("control_center_widget")
}

extension NSNotification.Name {
    static let didChangeNotificationBadgeRefreshRate = NSNotification.Name("didSelectNotificationBadgeRefreshRate")
    static let shouldReloadPock                      = NSNotification.Name("shouldReloadPock")
    static let shouldReloadStatusWidget              = NSNotification.Name("shouldReloadStatusWidget")
    static let shouldReloadControlCenterWidget       = NSNotification.Name("shouldReloadControlCenterWidget")
    static let shouldReloadDock                      = NSNotification.Name("shouldReloadDock")
    static let shouldReloadDockLayout                = NSNotification.Name("shouldReloadDockLayout")
    static let shouldReloadPersistentItems           = NSNotification.Name("shouldReloadPersistentItems")
    static let shouldEnableAutomaticUpdates          = NSNotification.Name("shouldEnableAutomaticUpdates")
}

enum NotificationBadgeRefreshRateKeys: Double, Codable, CaseIterable {
    case never          = -1
    case instantly      = 0.25
    case oneSecond      = 1
    case fiveSeconds    = 5
    case tenSeconds     = 10
    case thirtySeconds  = 30
    case oneMinute      = 60
    case threeMinutes   = 180
    
    func toString() -> String {
        switch self {
        case .never:
            return "Never"
        case .instantly:
            return "Instantly"
        case .oneSecond:
            return "1 second"
        case .fiveSeconds:
            return "5 seconds"
        case .tenSeconds:
            return "10 seconds"
        case .thirtySeconds:
            return "30 seconds"
        case .oneMinute:
            return "1 minute"
        case .threeMinutes:
            return "3 minutes"
        }
    }
}

extension Defaults.Keys {
    static let launchAtLogin                    = Defaults.Key<Bool>("launchAtLogin",          default: false)
    static let hideControlStrip                 = Defaults.Key<Bool>("hideControlStrip",       default: false)
    static let enableAutomaticUpdates           = Defaults.Key<Bool>("enableAutomaticUpdates", default: false)
    /// Dock widget
    static let notificationBadgeRefreshInterval = Defaults.Key<NotificationBadgeRefreshRateKeys>("notificationBadgeRefreshInterval", default: .tenSeconds)
    static let itemSpacing                      = Defaults.Key<Int>("itemSpacing",             default: 8)
    static let hideFinder                       = Defaults.Key<Bool>("hideFinder",             default: false)
    static let showOnlyRunningApps              = Defaults.Key<Bool>("showOnlyRunningApps",    default: false)
    static let hideTrash                        = Defaults.Key<Bool>("hideTrash",              default: false)
    static let hidePersistentItems              = Defaults.Key<Bool>("hidePersistentItems",    default: false)
    static let openFinderInsidePock             = Defaults.Key<Bool>("openFinderInsidePock",   default: true)
    /// Status widget
    static let shouldShowWifiItem               = Defaults.Key<Bool>("shouldShowWifiItem",          default: true)
    static let shouldShowPowerItem              = Defaults.Key<Bool>("shouldShowPowerItem",         default: true)
    static let shouldShowBatteryIcon            = Defaults.Key<Bool>("shouldShowBatteryIcon",       default: true)
    static let shouldShowBatteryPercentage      = Defaults.Key<Bool>("shouldShowBatteryPercentage", default: true)
    static let shouldShowDateItem               = Defaults.Key<Bool>("shouldShowDateItem",          default: true)
    static let shouldShow24TimeItem             = Defaults.Key<Bool>("shouldShow24TimeItem",        default: true)
    static let shouldShowSpotlightItem          = Defaults.Key<Bool>("shouldShowSpotlightItem",     default: true)
    /// Control Center widget
    static let shouldShowSleepItem          = Defaults.Key<Bool>("shouldShowSleepItem",             default: false)
    static let shouldShowLockItem           = Defaults.Key<Bool>("shouldShowLockItem",              default: false)
    static let shouldShowBrightnessItem     = Defaults.Key<Bool>("shouldShowBrightnessItem",        default: true)
    static let shouldShowVolumeItem         = Defaults.Key<Bool>("shouldShowVolumeItem",            default: true)
    static let shouldShowBrightnessDownItem = Defaults.Key<Bool>("shouldShowBrightnessDownItem",    default: true)
    static let shouldShowBrightnessUpItem   = Defaults.Key<Bool>("shouldShowBrightnessUpItem",      default: true)
    static let shouldShowVolumeDownItem     = Defaults.Key<Bool>("shouldShowVolumeDownItem",        default: true)
    static let shouldShowVolumeUpItem       = Defaults.Key<Bool>("shouldShowVolumeUpItem",          default: true)
    static let shouldShowToggleMuteItem     = Defaults.Key<Bool>("shouldShowToggleMuteItem",        default: false)
}
