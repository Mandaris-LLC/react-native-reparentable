import { ViewProps } from 'react-native';
import * as React from 'react';
interface ReparentableOriginProps extends ViewProps {
    destination: string;
}
export default class ReparentableOrigin extends React.Component<ReparentableOriginProps> {
    render(): JSX.Element;
}
export {};
