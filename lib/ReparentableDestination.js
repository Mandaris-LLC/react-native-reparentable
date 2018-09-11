"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const PropTypes = require("prop-types");
const react_native_1 = require("react-native");
const React = require("react");
const iface = {
    name: 'ReparentableDestination',
    propTypes: Object.assign({ name: PropTypes.string, children: PropTypes.oneOf([PropTypes.arrayOf(PropTypes.element), PropTypes.element]) }, react_native_1.ViewPropTypes),
};
let ReparentableDestinationComp = (react_native_1.requireNativeComponent('RCTReparentableDestination', iface));
class ReparentableDestination extends React.Component {
    render() {
        return (React.createElement(ReparentableDestinationComp, Object.assign({}, this.props)));
    }
}
exports.default = ReparentableDestination;
//# sourceMappingURL=ReparentableDestination.js.map