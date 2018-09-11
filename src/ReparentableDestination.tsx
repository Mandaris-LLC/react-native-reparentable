import * as PropTypes from 'prop-types';
import { requireNativeComponent, ViewPropTypes, ViewProps } from 'react-native';
import * as React from 'react';

const iface = {
    name: 'ReparentableDestination',
    propTypes: {
        name: PropTypes.string,
        children: PropTypes.oneOf([PropTypes.arrayOf(PropTypes.element), PropTypes.element]),
        ...ViewPropTypes,
    },
};

let ReparentableDestinationComp: any = (requireNativeComponent('RCTReparentableDestination', iface))
interface ReparentableDestinationProps extends ViewProps {
    name: string
}
export default class ReparentableDestination extends React.Component<ReparentableDestinationProps> {
    render() {
        return (
            <ReparentableDestinationComp {...this.props}>
            </ReparentableDestinationComp>
        )
    }
}
