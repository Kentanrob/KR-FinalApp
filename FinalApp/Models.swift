//
//  Models.swift
//  FinalApp
//
//  Created by Kentan on 7/31/21.
//

import Foundation

struct Crypto: Codable {
    let asset_id : String
    let name : String?
    let price_usd: Float?
    let id_icon : String?
}

/*
 "asset_id": "BTC",
     "name": "Bitcoin",
     "type_is_crypto": 1,
     "data_start": "2010-07-17",
     "data_end": "2021-07-31",
     "data_quote_start": "2014-02-24T17:43:05.0000000Z",
     "data_quote_end": "2021-07-31T07:24:11.2229820Z",
     "data_orderbook_start": "2014-02-24T17:43:05.0000000Z",
     "data_orderbook_end": "2020-08-05T14:38:38.3413202Z",
     "data_trade_start": "2010-07-17T23:09:17.0000000Z",
     "data_trade_end": "2021-07-31T07:21:02.6980000Z",
     "data_symbols_count": 60053,
     "volume_1hrs_usd": 2317350739775.25,
     "volume_1day_usd": 124309035943434.63,
     "volume_1mth_usd": 3017023508404593.31,
     "price_usd": 41536.153240709698518735610116,
     "id_icon": "4caf2b16-a017-4e26-a348-2cea69c34cba"
 */
