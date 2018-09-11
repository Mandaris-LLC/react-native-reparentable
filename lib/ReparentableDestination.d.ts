import { ViewProps } from 'react-native';
import * as React from 'react';
interface ReparentableDestinationProps extends ViewProps {
    name: string;
}
export default class ReparentableDestination extends React.Component<ReparentableDestinationProps> {
    render(): JSX.Element;
}
export {};
