import React from "react";
import { Layout } from "@core/components/layout/layout";
import { ContentWrapper } from "@core/components/content-wrapper/content-wrapper";
import { Title } from "@core/components/typography/title/title";
import { Subtitle } from "@core/components/typography/subtitle/subtitle";
import {
    DiagnosisLayout,
    LeftDiagnosisLayout,
    RightDiagnosisLayout
} from "@feats/diagnosis/components/diagnosis-layout/diagnosis-layout";
import { PickedImage } from "@core/components/picked-image/picked-image";
import { Button, Divider, FileUpload } from "react-untitled-ui";
import { PredictionResults } from "@feats/diagnosis/components/prediction-results/prediction-results";
import { useKidneyDiseases } from "@feats/diagnosis/pages/kidney-diseases/use-kidney-diseases";
import { Helmet } from "react-helmet";

export type KidneyDiseasesProps = {

}

export const KidneyDiseases: React.FC<KidneyDiseasesProps> = () => {
    const { file, clearFile, onPick, loading, handleButtonClick, predictions } = useKidneyDiseases()

    return <Layout>
        <Helmet>
            <title>Диагностика почечных образований | Lumi</title>
        </Helmet>
        <ContentWrapper>
            <Title>Диагностика почечных образований</Title>
            <Subtitle>Автоматическая диагностика опасных почечных новобразований по КТ почек</Subtitle>
            <DiagnosisLayout>
                <LeftDiagnosisLayout>
                    {
                        file
                            ? <PickedImage onClick={ clearFile } file={ file }/>
                            : <FileUpload
                                onDrop={ onPick }
                                buttonText="Нажмите"
                                text="чтобы загрузить КТ"
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
                            ? "Сначала вам необходимо загрузить КТ"
                            : "Нажмите на кнопку Диагностировать, чтобы получить результаты"
                        }/>
                </RightDiagnosisLayout>
            </DiagnosisLayout>
        </ContentWrapper>
    </Layout>
}