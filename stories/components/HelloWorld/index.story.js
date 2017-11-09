import React from 'react';
import { storiesOf } from '@storybook/react';
import HelloWorld from '../../../src/components/HelloWorld';

storiesOf('HelloWorld', module)
  .add('world', () => <HelloWorld name="world" />)
  .add('foo', () => <HelloWorld name="foo" />);
