import React from "react";
import { ContentWrapper, Layout, PickedImage, Title, Subtitle } from "@core/components";
import {
    DiagnosisLayout,
    LeftDiagnosisLayout,
    RightDiagnosisLayout
} from "@feats/diagnosis/components/diagnosis-layout/diagnosis-layout";
import { PredictionResults } from "@feats/diagnosis/components/prediction-results/prediction-results";
import { Button, Divider, FileUpload } from "react-untitled-ui";
import { useSkinCancer } from "@feats/diagnosis/pages/skin-cancer/use-skin-cancer";
import Head from "next/head";

export type SkinCancerProps = {}

export const SkinCancer: React.FC<SkinCancerProps> = () => {
    const {file, onPick, loading, handleButtonClick, predictions, clearFile} = useSkinCancer()

    return <Layout>
        <Head>
            <title>Диагностика рака кожи | Lumi</title>
        </Head>
        <ContentWrapper>
            <Title>Диагностика рака кожи</Title>
            <Subtitle>Автоматическая диагностика рака кожи по фотографии опухоли</Subtitle>
            <DiagnosisLayout>
                <LeftDiagnosisLayout>
                    {
                        file
                            ? <PickedImage onClick={ clearFile } file={ file }/>
                            : <FileUpload
                                onDrop={ onPick }
                                buttonText="Нажмите"
                                text="чтобы загрузить фотографию"
                                subText="Изображение в JPEG или JPG"/>
                    }
                    <Button
                        loading={ loading }
                        disabled={ !file }
                        onClick={ handleButtonClick }
                        fullWidth>
                        Диагностировать
                    </Button>
                </LeftDiagnosisLayout>
                <Divider type="vertical"/>
                <RightDiagnosisLayout>
                    <PredictionResults
                        predictions={ predictions }
                        notFoundText={ !file
                            ? "Сначала вам необходимо загрузить фотографию"
                            : "Нажмите на кнопку Диагностировать, чтобы получить результаты"
                        }/>
                </RightDiagnosisLayout>
            </DiagnosisLayout>
        </ContentWrapper>
    </Layout>
}