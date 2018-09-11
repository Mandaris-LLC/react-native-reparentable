"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const PropTypes = require("prop-types");
const react_native_1 = require("react-native");
const React = require("react");
const iface = {
    name: 'ReparentableOrigin',
    propTypes: Object.assign({ destination: PropTypes.string, children: PropTypes.oneOf([PropTypes.arrayOf(PropTypes.element), PropTypes.element]) }, react_native_1.ViewPropTypes),
};
let ReparentableOriginComp = react_native_1.requireNativeComponent('RCTReparentableOrigin', iface);
class ReparentableOrigin extends React.Component {
    render() {
        return (React.createElement(ReparentableOriginComp, Object.assign({}, this.props)));
    }
}
exports.default = ReparentableOrigin;
//# sourceMappingURL=ReparentableOrigin.js.map