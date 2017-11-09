import React from 'react';
import styles from './index.scss';

export default function HelloWorld({ name }) {
  return <div className={styles.HelloWorld}>Hello, {name}!</div>;
}
