public enum Group {
    case group(StatementStringRepresentable)
}

extension Group: StatementStringRepresentable {
    public var sqlString: String {
        switch self {
        case .group(let representable):
            return "\(representable.sqlString)"
        }
    }
}
