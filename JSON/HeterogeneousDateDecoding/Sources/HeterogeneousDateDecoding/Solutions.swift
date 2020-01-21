import Foundation

// MARK: - General Notes

// The built-in JSONDecoder type supports decoding various numeric and string
// date formats directly into Date instances. It does, however, not support
// different formats in the same decoding process without custom setup.

// MARK: - Custom Decoding

// We implement the initializer from the Decodable protocol ourselves which
// gives us full control over how to read and sanitize the data. For the
// date formats given in this challenge all we have to do is divide the
// millisecond Epoch timestamp by 1000 in order to be able to convert it into
// a Date instance.

func decode_custom(_ json: Data) throws -> P {
    struct S: Decodable, P {
        enum CodingKeys: String, CodingKey {
            case date1
            case date2
        }

        let date1: Date
        let date2: Date

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let timeInterval1 = try container.decode(
                Double.self, forKey: .date1)
            let timeInterval2 = try container.decode(
                Double.self, forKey: .date2) / 1000
            date1 = Date(timeIntervalSince1970: timeInterval1)
            date2 = Date(timeIntervalSince1970: timeInterval2)
        }
    }

    return try JSONDecoder().decode(S.self, from: json)
}
