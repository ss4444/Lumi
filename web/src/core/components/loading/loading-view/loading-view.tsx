import React from "react";
import styles from "./loading-view.module.scss";
import { Spinner } from "react-untitled-ui";

export const LoadingView: React.FC = () => {
    return <div className={ styles.view }>
        <Spinner/>
    </div>
}