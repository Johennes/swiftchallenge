import Foundation

// MARK: - Date Decoding Strategy

// The built-in JSONDecoder automatically converts second-based timestamps into
// date objects. However, by default it uses a date decoding strategy of
// .deferredToDate which expects seconds since the reference date 2001/01/01.
// Fortunately, it also has a predefined mode for handling epoch timestamps,
// that is seconds since 1970/01/01, which we are using below.

func decode_dateDecodingStrategy(_ json: Data) throws -> P {
    struct S: Decodable, P {
        let date: Date
    }

    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .secondsSince1970

    return try decoder.decode(S.self, from: json)
}

// MARK: - Computed Property

// Another alternative is to decode the epoch timestamp into a numeric property
// and create the corresponding Date object only on demand via a computed
// property.
//
// The benefit here is that we are delaying the more expensive date parsing
// operation to when its result is actually needed. This can be advantegous in
// cases where you have to parse a large number of objects but usually only need
// a few of them (e.g. for display). Especially when the date format is more
// complex than epoch seconds, decoding only the raw value will usually be a
// lot faster than creating all Date objects from the start.
//
// If the date property is used repeatedly, it can also be made lazy so that the
// date object creation happens only a single time instead of on each access
// of the property.

func decode_computedProperty(_ json: Data) throws -> P {
    struct S: Decodable, P {
        enum CodingKeys: String, CodingKey {
            case timeInterval = "date"
        }

        let timeInterval: TimeInterval

        var date: Date {
            return Date(timeIntervalSince1970: timeInterval)
        }
    }

    return try JSONDecoder().decode(S.self, from: json)
}
