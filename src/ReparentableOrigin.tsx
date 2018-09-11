import * as PropTypes from 'prop-types';
import { requireNativeComponent, ViewPropTypes, ViewProps } from 'react-native';
import * as React from 'react'

const iface = {
    name: 'ReparentableOrigin',
    propTypes: {
        destination: PropTypes.string,
        children: PropTypes.oneOf([PropTypes.arrayOf(PropTypes.element), PropTypes.element]),
        ...ViewPropTypes,
    },
};

let ReparentableOriginComp: any = requireNativeComponent('RCTReparentableOrigin', iface)
interface ReparentableOriginProps extends ViewProps {
    destination: string
}
export default class ReparentableOrigin extends React.Component<ReparentableOriginProps> {
    render() {
        return (
            <ReparentableOriginComp {...this.props}>
            </ReparentableOriginComp>
        )
    }
}
