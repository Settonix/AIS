import React from "react";
import {
  List,
  Datagrid,
  Edit,
  Create,
  SimpleForm,
  DateField,
  ReferenceInput,
  TextField,
  BooleanInput,
  NumberInput,
  SelectInput,
  ReferenceManyField,
  SingleFieldList,
  SelectArrayInput,
  ChipField,
  EditButton,
  ReferenceArrayInput,
  DisabledInput,
  TextInput,
  LongTextInput,
  DateInput
} from "admin-on-rest";
import BookIcon from "material-ui/svg-icons/action/book";
export const PostIcon = BookIcon;

export const name = "art_edition";

export const list = props => (
  <List {...props}>
    <Datagrid>
      <TextField source="id" />
      <TextField source="sold" />
      <TextField source="archived" />
      <TextField source="sold_info" />
      <TextField source="edition_info" />
      <TextField source="price" />
      <TextField source="discount" />
      <EditButton basePath="/art-edition" />
    </Datagrid>
  </List>
);

const Title = ({ record }) => {
  return <span>Art edition {record ? `"${record.title}"` : ""}</span>;
};

export const edit = props => (
  <Edit title={<Title />} {...props}>
    <SimpleForm>
      <DisabledInput source="id" />
      <BooleanInput label="Sold?" source="sold" />
      <BooleanInput label="Archived?" source="archived" />
      <TextInput source="edition_info" />
      <NumberInput source="price" />
      <NumberInput source="discount" />
      <DateInput source="republish_date" />
      <ReferenceInput label="Art" source="art_id" reference="art" allowEmpty>
        <SelectInput optionText="title" />
      </ReferenceInput>
      <ReferenceInput
        label="Store"
        source="stock_id"
        reference="stock"
        allowEmpty
      >
        <SelectInput optionText="title" />
      </ReferenceInput>
    </SimpleForm>
  </Edit>
);

export const create = props => (
  <Create title="Create a Post" {...props}>
    <SimpleForm redirect="list">
      <DisabledInput source="id" />
      <BooleanInput label="Sold?" source="sold" />
      <BooleanInput label="Archived?" source="archived" />
      <TextInput source="edition_info" />
      <NumberInput source="price" />
      <NumberInput source="discount" />
      <DateInput source="republish_date" />
      <ReferenceInput label="Art" source="art_id" reference="art" allowEmpty>
        <SelectInput optionText="title" />
      </ReferenceInput>
      <ReferenceInput
        label="Store"
        source="stock_id"
        reference="stock"
        allowEmpty
      >
        <SelectInput optionText="title" />
      </ReferenceInput>
    </SimpleForm>
  </Create>
);
