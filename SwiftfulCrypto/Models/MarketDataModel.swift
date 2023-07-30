//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by John Strandt on 7/26/23.
//

import Foundation

/*  JSON data
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response :
 
 {
   "data": {
     "active_cryptocurrencies": 10031,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 781,
     "total_market_cap": {
       "btc": 41824708.23260234,
       "eth": 655779468.3257383,
       "ltc": 13744086388.658142,
       "bch": 5062332908.359377,
       "bnb": 5146299644.570427,
       "eos": 1649458277944.7307,
       "xrp": 1723278856967.0042,
       "xlm": 8364573428843.846,
       "link": 158435353759.1545,
       "dot": 234166759752.0513,
       "yfi": 179559141.66437003,
       "usd": 1227918904539.4792,
       "aed": 4510146136373.506,
       "ars": 334578554225189.56,
       "aud": 1814936588124.72,
       "bdt": 133332224766543.36,
       "bhd": 462887361525.341,
       "bmd": 1227918904539.4792,
       "brl": 5805723372553.108,
       "cad": 1621288865203.2249,
       "chf": 1056452308709.5865,
       "clp": 1012234948957120.8,
       "cny": 8780479710690.466,
       "czk": 26600640533630.598,
       "dkk": 8247700433037.646,
       "eur": 1106799439633.5146,
       "gbp": 948622610107.4504,
       "hkd": 9580319070891.56,
       "huf": 422029096728133.4,
       "idr": 18430387401740110,
       "ils": 4533138917861.013,
       "inr": 100654043819975.1,
       "jpy": 172173526290197.56,
       "krw": 1560643900443239,
       "kwd": 376854451397.68884,
       "lkr": 406038278437907.44,
       "mmk": 2579842679576056,
       "mxn": 20680972426330.74,
       "myr": 5587644975106.885,
       "ngn": 968214056229381,
       "nok": 12403309544103.46,
       "nzd": 1972391401334.9104,
       "php": 66987881778652.06,
       "pkr": 352873195192033.1,
       "pln": 4892663749758.922,
       "rub": 110512714915661.1,
       "sar": 4605241088016.666,
       "sek": 12752160076964.225,
       "sgd": 1626937292164.1062,
       "thb": 41955840110030.94,
       "try": 33072153815414.09,
       "twd": 38333541965503.73,
       "uah": 45370980967849.21,
       "vef": 122951519911.53812,
       "vnd": 29070056340873680,
       "zar": 21607541612912.66,
       "xdr": 912751415149.139,
       "xag": 49219127780.65074,
       "xau": 621781295.6916553,
       "bits": 41824708232602.34,
       "sats": 4182470823260234.5
     },
     "total_volume": {
       "btc": 1214062.9739309002,
       "eth": 19035579.80920393,
       "ltc": 398955237.2291419,
       "bch": 146946415.3000415,
       "bnb": 149383752.21841827,
       "eos": 47879502497.8928,
       "xrp": 50022322746.79105,
       "xlm": 242801906380.53598,
       "link": 4598968047.568978,
       "dot": 6797254655.293246,
       "yfi": 5212136.909913863,
       "usd": 35643306074.01866,
       "aed": 130917863209.87048,
       "ars": 9711949030154.916,
       "aud": 52682909332.458,
       "bdt": 3870289218053.944,
       "bhd": 13436421447.416683,
       "bmd": 35643306074.01866,
       "brl": 168525115448.5675,
       "cad": 47061817391.36092,
       "chf": 30666074813.842697,
       "clp": 29382559362117.312,
       "cny": 254874588743.48557,
       "czk": 772147711709.6201,
       "dkk": 239409385957.64194,
       "eur": 32127521649.48962,
       "gbp": 27536057890.9527,
       "hkd": 278091854167.36707,
       "huf": 12250411823787.38,
       "idr": 534986420352680.1,
       "ils": 131585284116.10664,
       "inr": 2921726246089.9844,
       "jpy": 4997751620825.627,
       "krw": 45301451105935.16,
       "kwd": 10939108850.646696,
       "lkr": 11786239777420.605,
       "mmk": 74886152425051.6,
       "mxn": 600315075673.9138,
       "myr": 162194864289.82144,
       "ngn": 28104746839363.758,
       "nok": 360035957404.7608,
       "nzd": 57253414827.02327,
       "php": 1944484741345.4788,
       "pkr": 10242995083021.121,
       "pln": 142021358988.1303,
       "rub": 3207897938738.047,
       "sar": 133678223405.46692,
       "sek": 370162185017.0835,
       "sgd": 47225776599.30141,
       "thb": 1217869392763.5845,
       "try": 959998984144.5823,
       "twd": 1112723457653.8428,
       "uah": 1317002088278.8115,
       "vef": 3568964237.19149,
       "vnd": 843828457983817.8,
       "zar": 627210979787.7772,
       "xdr": 26494809990.612408,
       "xag": 1428703825.3881407,
       "xau": 18048700.896700807,
       "bits": 1214062973930.9001,
       "sats": 121406297393090.02
     },
     "market_cap_percentage": {
       "btc": 46.47964282712329,
       "eth": 18.332630314621312,
       "usdt": 6.820724774164279,
       "xrp": 3.0560057870460318,
       "bnb": 2.9901148484228455,
       "usdc": 2.159437256681065,
       "steth": 1.1959489402903514,
       "doge": 0.8908764727729602,
       "ada": 0.8752516431327243,
       "sol": 0.8330686672477914
     },
     "market_cap_change_percentage_24h_usd": 0.4298598443444755,
     "updated_at": 1690401256
   }
 }
 
 */


struct GlobalData: Codable {
    let data: MarketDataModel?
}


struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {

        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {

        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {

        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
    
}
